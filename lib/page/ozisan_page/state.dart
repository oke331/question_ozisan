import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:question_ozisan/api/audio_player_api.dart';
import 'package:question_ozisan/gen/assets.gen.dart';
import 'package:question_ozisan/model/answer.dart';
import 'package:question_ozisan/model/question.dart';
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
    @Default('') errorMessage,
  }) = _OzisanPageState;
}

class OzisanPageNotifier extends StateNotifier<OzisanPageState> {
  OzisanPageNotifier._(
    this._audioPlayerApi,
  ) : super(const OzisanPageState());

  final AudioPlayerApi _audioPlayerApi;

  Future<void> onSelectedAnswer({required Answer answer}) async {
    final ozisanType = answer.ozisanType;
    state = state.copyWith(ozisanType: ozisanType);
    _changeAnimationType(ozisanType: ozisanType);
    await _playSound(ozisanType: ozisanType);
  }

  void _changeAnimationType({required OzisanType ozisanType}) {
    switch (ozisanType) {
      case OzisanType.slim:
        state = state.copyWith(animationType: AnimationType.slim);
        break;
      case OzisanType.fat:
        state = state.copyWith(animationType: AnimationType.fat);
        break;
    }
  }

  Future<void> _playSound({required OzisanType ozisanType}) async {
    try {
      switch (ozisanType) {
        case OzisanType.slim:
          // ignore: unawaited_futures
          _audioPlayerApi.play(fileName: Assets.sound.slimSe);
          break;
        case OzisanType.fat:
          // ignore: unawaited_futures
          _audioPlayerApi.play(fileName: Assets.sound.fatSe);
          break;
      }
    } on Exception catch (e) {
      state = state.copyWith(
        errorMessage: '音声の再生に失敗しました。\nError: ${e.toString()}',
      );
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
