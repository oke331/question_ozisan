import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:question_ozisan/page/ozisan_page/state.dart';

class OzisanQuestionSection extends HookConsumerWidget {
  const OzisanQuestionSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final question = ref.watch(ozisanPageStateProvider).question;
    final notifier = ref.watch(ozisanPageStateProvider.notifier);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Q: ${question.questionText}'),
          const SizedBox(height: 12),
          ...[question.answer1, question.answer2].map(
            (answer) => _AnswerButton(
              text: answer.text,
              onPressed: () {
                notifier.onSelectedAnswer(answer: answer);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _AnswerButton extends StatelessWidget {
  const _AnswerButton({
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
