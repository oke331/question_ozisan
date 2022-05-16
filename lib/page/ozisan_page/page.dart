import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:question_ozisan/page/ozisan_page/body.dart';
import 'package:question_ozisan/page/ozisan_page/state.dart';
import 'package:question_ozisan/page/util/custom_snack_bar.dart';

class OzisanPage extends HookConsumerWidget {
  const OzisanPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<String>(
      ozisanPageStateProvider.select((value) => value.errorMessage),
      (_, next) => showCustomSnackBar(
        context: context,
        msg: next,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('おじさんの体型'),
      ),
      body: const OzisanBody(),
    );
  }
}
