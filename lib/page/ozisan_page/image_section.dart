import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:question_ozisan/page/ozisan_page/state.dart';

class OzisanImageSection extends HookConsumerWidget {
  const OzisanImageSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ozisanType = ref.watch(ozisanPageStateProvider).ozisanType;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Image.asset(ozisanType.asset),
    );
  }
}
