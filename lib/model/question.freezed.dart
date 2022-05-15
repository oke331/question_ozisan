// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Question {
  int get id => throw _privateConstructorUsedError;
  String get questionText => throw _privateConstructorUsedError;
  Answer get answer1 => throw _privateConstructorUsedError;
  Answer get answer2 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res>;
  $Res call({int id, String questionText, Answer answer1, Answer answer2});

  $AnswerCopyWith<$Res> get answer1;
  $AnswerCopyWith<$Res> get answer2;
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res> implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  final Question _value;
  // ignore: unused_field
  final $Res Function(Question) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? questionText = freezed,
    Object? answer1 = freezed,
    Object? answer2 = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      questionText: questionText == freezed
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      answer1: answer1 == freezed
          ? _value.answer1
          : answer1 // ignore: cast_nullable_to_non_nullable
              as Answer,
      answer2: answer2 == freezed
          ? _value.answer2
          : answer2 // ignore: cast_nullable_to_non_nullable
              as Answer,
    ));
  }

  @override
  $AnswerCopyWith<$Res> get answer1 {
    return $AnswerCopyWith<$Res>(_value.answer1, (value) {
      return _then(_value.copyWith(answer1: value));
    });
  }

  @override
  $AnswerCopyWith<$Res> get answer2 {
    return $AnswerCopyWith<$Res>(_value.answer2, (value) {
      return _then(_value.copyWith(answer2: value));
    });
  }
}

/// @nodoc
abstract class _$$_QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$$_QuestionCopyWith(
          _$_Question value, $Res Function(_$_Question) then) =
      __$$_QuestionCopyWithImpl<$Res>;
  @override
  $Res call({int id, String questionText, Answer answer1, Answer answer2});

  @override
  $AnswerCopyWith<$Res> get answer1;
  @override
  $AnswerCopyWith<$Res> get answer2;
}

/// @nodoc
class __$$_QuestionCopyWithImpl<$Res> extends _$QuestionCopyWithImpl<$Res>
    implements _$$_QuestionCopyWith<$Res> {
  __$$_QuestionCopyWithImpl(
      _$_Question _value, $Res Function(_$_Question) _then)
      : super(_value, (v) => _then(v as _$_Question));

  @override
  _$_Question get _value => super._value as _$_Question;

  @override
  $Res call({
    Object? id = freezed,
    Object? questionText = freezed,
    Object? answer1 = freezed,
    Object? answer2 = freezed,
  }) {
    return _then(_$_Question(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      questionText: questionText == freezed
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      answer1: answer1 == freezed
          ? _value.answer1
          : answer1 // ignore: cast_nullable_to_non_nullable
              as Answer,
      answer2: answer2 == freezed
          ? _value.answer2
          : answer2 // ignore: cast_nullable_to_non_nullable
              as Answer,
    ));
  }
}

/// @nodoc

class _$_Question with DiagnosticableTreeMixin implements _Question {
  const _$_Question(
      {required this.id,
      required this.questionText,
      required this.answer1,
      required this.answer2});

  @override
  final int id;
  @override
  final String questionText;
  @override
  final Answer answer1;
  @override
  final Answer answer2;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Question(id: $id, questionText: $questionText, answer1: $answer1, answer2: $answer2)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Question'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('questionText', questionText))
      ..add(DiagnosticsProperty('answer1', answer1))
      ..add(DiagnosticsProperty('answer2', answer2));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Question &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.questionText, questionText) &&
            const DeepCollectionEquality().equals(other.answer1, answer1) &&
            const DeepCollectionEquality().equals(other.answer2, answer2));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(questionText),
      const DeepCollectionEquality().hash(answer1),
      const DeepCollectionEquality().hash(answer2));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      __$$_QuestionCopyWithImpl<_$_Question>(this, _$identity);
}

abstract class _Question implements Question {
  const factory _Question(
      {required final int id,
      required final String questionText,
      required final Answer answer1,
      required final Answer answer2}) = _$_Question;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get questionText => throw _privateConstructorUsedError;
  @override
  Answer get answer1 => throw _privateConstructorUsedError;
  @override
  Answer get answer2 => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      throw _privateConstructorUsedError;
}
