import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:question_ozisan/api/audio_player_api.dart';
import 'package:question_ozisan/gen/assets.gen.dart';
import 'package:question_ozisan/model/answer.dart';
import 'package:question_ozisan/model/question.dart';
import 'package:question_ozisan/util/constant_questions.dart';
import 'package:question_ozisan/util/extensions.dart';

part 'state.freezed.dart';

final ozisanPageStateProvider =
    StateNotifierProvider<OzisanPageNotifier, OzisanPageState>(
  (ref) => OzisanPageNotifier._(ref.watch(audioPlayerApiProvider)),
);

enum AnimationType {
  stop,
  play,
}

@freezed
class OzisanPageState with _$OzisanPageState {
  const factory OzisanPageState({
    @Default(dinnerQuestion) Question question,
    @Default(OzisanType.fat) OzisanType ozisanType,
    @Default(AnimationType.stop) AnimationType animationType,
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

    state = state.copyWith(
      ozisanType: ozisanType,
      animationType: AnimationType.play,
    );
    _changeQuestion();
    await _playSound(ozisanType: ozisanType);
  }

  Future<void> _playSound({required OzisanType ozisanType}) async {
    try {
      switch (ozisanType) {
        case OzisanType.slim:
          await _audioPlayerApi.play(
            fileName: Assets.sounds.slimSe.withoutAssets,
          );
          break;
        case OzisanType.fat:
          await _audioPlayerApi.play(
            fileName: Assets.sounds.fatSe.withoutAssets,
          );
          break;
      }
    } catch (e) {
      state = state.copyWith(
        errorMessage: '音声の再生に失敗しました。\nError: ${e.toString()}',
      );
    }
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

  void onFinishedAnimation() {
    state = state.copyWith(animationType: AnimationType.stop);
  }
}
