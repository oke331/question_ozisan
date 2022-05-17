import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:question_ozisan/model/answer.dart';
import 'package:question_ozisan/page/ozisan_page/state.dart';

class OzisanImageSection extends HookConsumerWidget {
  const OzisanImageSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(ozisanPageStateProvider.notifier);
    final ozisanType = ref.watch(ozisanPageStateProvider).ozisanType;
    final animationType = ref.watch(ozisanPageStateProvider).animationType;

    const animationDuration = Duration(seconds: 1);
    final rotateAnimationController = useAnimationController(
      duration: animationDuration,
    );
    final sizeAnimationController = useAnimationController(
      lowerBound: 0.5,
      duration: animationDuration,
    );
    if (animationType == AnimationType.play) {
      rotateAnimationController.reset();
      rotateAnimationController.forward().then((value) {
        rotateAnimationController.reset();
        if (!rotateAnimationController.isAnimating) {
          notifier.onFinishedAnimation();
        }
      });

      sizeAnimationController.reset();
      sizeAnimationController.forward();
    }

    return Padding(
      padding: const EdgeInsets.all(20),
      child: AnimatedBuilder(
        animation: Listenable.merge([
          rotateAnimationController,
          sizeAnimationController,
        ]),
        builder: (context, child) {
          switch (animationType) {
            case AnimationType.stop:
              return Image.asset(ozisanType.asset);
            case AnimationType.play:
              switch (ozisanType) {
                case OzisanType.slim:
                  return Transform.scale(
                    scale: sizeAnimationController.value,
                    child: Transform.rotate(
                      angle: 2 * pi * rotateAnimationController.value,
                      child: Image.asset(ozisanType.asset),
                    ),
                  );
                case OzisanType.fat:
                  return Transform.scale(
                    scale: sizeAnimationController.value,
                    child: Transform.rotate(
                      angle: sin(rotateAnimationController.value * pi * 2) / 3,
                      child: Image.asset(ozisanType.asset),
                    ),
                  );
              }
          }
        },
      ),
    );
  }
}
