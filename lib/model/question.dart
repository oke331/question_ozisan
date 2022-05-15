import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:question_ozisan/model/answer.dart';

part 'question.freezed.dart';

@freezed
class Question with _$Question {
  const factory Question({
    required int id,
    required String questionText,
    required Answer answer1,
    required Answer answer2,
  }) = _Question;
}
