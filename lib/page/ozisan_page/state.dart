import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:question_ozisan/api/audio_player_api.dart';
import 'package:question_ozisan/model/answer.dart';
import 'package:question_ozisan/model/question.dart';
import 'package:question_ozisan/util/constant_assets.dart';
import 'package:question_ozisan/util/constant_questions.dart';

part 'state.freezed.dart';

final ozisanPageStateProvider =
    StateNotifierProvider<OzisanPageNotifier, OzisanPageState>(
  (ref) => OzisanPageNotifier._(ref.watch(audioPlayerApiProvider)),
);

enum AnimationType {
  none,
  slim,
  fat,
}

@freezed
class OzisanPageState with _$OzisanPageState {
  const factory OzisanPageState({
    @Default(dinnerQuestion) Question question,
    @Default(OzisanType.slim) OzisanType ozisanType,
    @Default(AnimationType.none) AnimationType animationType,
  }) = _OzisanPageState;
}

class OzisanPageNotifier extends StateNotifier<OzisanPageState> {
  OzisanPageNotifier._(this._audioPlayerApi) : super(const OzisanPageState());

  final AudioPlayerApi _audioPlayerApi;

  void onSelectedAnswer({required Answer answer}) {
    state = state.copyWith(ozisanType: answer.ozisanType);
    switch (answer.ozisanType) {
      case OzisanType.slim:
        state = state.copyWith(animationType: AnimationType.slim);
        _audioPlayerApi.play(fileName: soundSlim);
        break;
      case OzisanType.fat:
        state = state.copyWith(animationType: AnimationType.fat);
        _audioPlayerApi.play(fileName: soundFat);
        break;
    }
  }

  void onFinishedAnimation() {
    state = state.copyWith(animationType: AnimationType.none);
    _changeQuestion();
  }

  void _changeQuestion() {
    final index = questions.indexWhere(
      (element) => element.id == state.question.id,
    );

    final isLastQuestion = questions.length - 1 == index;
    if (isLastQuestion) {
      state = state.copyWith(question: questions[0]);
      return;
    }

    state = state.copyWith(question: questions[index + 1]);
  }
}
