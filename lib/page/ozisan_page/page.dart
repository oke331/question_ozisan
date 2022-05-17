import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:question_ozisan/page/ozisan_page/body.dart';
import 'package:question_ozisan/page/ozisan_page/state.dart';
import 'package:question_ozisan/page/util/custom_snack_bar.dart';

class OzisanPage extends HookConsumerWidget {
  const OzisanPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(ozisanPageStateProvider.notifier);
    ref.listen<String>(
      ozisanPageStateProvider.select((value) => value.audioErrorMessage),
      (_, next) {
        if (next.isEmpty) {
          return;
        }
        showCustomSnackBar(
          context: context,
          msg: next,
        );
        notifier.resetAudioErrorMessage();
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('たけおじさん(40)の体型'),
        centerTitle: true,
      ),
      body: const OzisanBody(),
    );
  }
}
