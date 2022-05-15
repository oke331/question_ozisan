import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OzisanTitleSection extends HookConsumerWidget {
  const OzisanTitleSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        '30歳が近くなるにつれお腹を気にしはじめ、\n'
        '気づいたらこんなアプリを作ってしまいました。',
        style: Theme.of(context).textTheme.headline6,
        textAlign: TextAlign.center,
      ),
    );
  }
}
