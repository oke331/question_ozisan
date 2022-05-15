import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:question_ozisan/page/ozisan_page/body.dart';

class OzisanPage extends HookConsumerWidget {
  const OzisanPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('おじさんの体型'),
      ),
      body: const OzisanBody(),
    );
  }
}
