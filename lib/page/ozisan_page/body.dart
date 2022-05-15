import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:question_ozisan/page/ozisan_page/image_section.dart';
import 'package:question_ozisan/page/ozisan_page/question_section.dart';
import 'package:question_ozisan/page/ozisan_page/title_section.dart';

class OzisanBody extends HookConsumerWidget {
  const OzisanBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Column(
        children: const [
          OzisanTitleSection(),
          OzisanImageSection(),
          OzisanQuestionSection(),
        ],
      ),
    );
  }
}
