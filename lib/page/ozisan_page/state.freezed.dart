// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OzisanPageState {
  Question get question => throw _privateConstructorUsedError;
  OzisanType get ozisanType => throw _privateConstructorUsedError;
  AnimationType get animationType => throw _privateConstructorUsedError;
  dynamic get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OzisanPageStateCopyWith<OzisanPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OzisanPageStateCopyWith<$Res> {
  factory $OzisanPageStateCopyWith(
          OzisanPageState value, $Res Function(OzisanPageState) then) =
      _$OzisanPageStateCopyWithImpl<$Res>;
  $Res call(
      {Question question,
      OzisanType ozisanType,
      AnimationType animationType,
      dynamic errorMessage});

  $QuestionCopyWith<$Res> get question;
}

/// @nodoc
class _$OzisanPageStateCopyWithImpl<$Res>
    implements $OzisanPageStateCopyWith<$Res> {
  _$OzisanPageStateCopyWithImpl(this._value, this._then);

  final OzisanPageState _value;
  // ignore: unused_field
  final $Res Function(OzisanPageState) _then;

  @override
  $Res call({
    Object? question = freezed,
    Object? ozisanType = freezed,
    Object? animationType = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
      ozisanType: ozisanType == freezed
          ? _value.ozisanType
          : ozisanType // ignore: cast_nullable_to_non_nullable
              as OzisanType,
      animationType: animationType == freezed
          ? _value.animationType
          : animationType // ignore: cast_nullable_to_non_nullable
              as AnimationType,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }

  @override
  $QuestionCopyWith<$Res> get question {
    return $QuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc
abstract class _$$_OzisanPageStateCopyWith<$Res>
    implements $OzisanPageStateCopyWith<$Res> {
  factory _$$_OzisanPageStateCopyWith(
          _$_OzisanPageState value, $Res Function(_$_OzisanPageState) then) =
      __$$_OzisanPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Question question,
      OzisanType ozisanType,
      AnimationType animationType,
      dynamic errorMessage});

  @override
  $QuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$_OzisanPageStateCopyWithImpl<$Res>
    extends _$OzisanPageStateCopyWithImpl<$Res>
    implements _$$_OzisanPageStateCopyWith<$Res> {
  __$$_OzisanPageStateCopyWithImpl(
      _$_OzisanPageState _value, $Res Function(_$_OzisanPageState) _then)
      : super(_value, (v) => _then(v as _$_OzisanPageState));

  @override
  _$_OzisanPageState get _value => super._value as _$_OzisanPageState;

  @override
  $Res call({
    Object? question = freezed,
    Object? ozisanType = freezed,
    Object? animationType = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_OzisanPageState(
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
      ozisanType: ozisanType == freezed
          ? _value.ozisanType
          : ozisanType // ignore: cast_nullable_to_non_nullable
              as OzisanType,
      animationType: animationType == freezed
          ? _value.animationType
          : animationType // ignore: cast_nullable_to_non_nullable
              as AnimationType,
      errorMessage:
          errorMessage == freezed ? _value.errorMessage : errorMessage,
    ));
  }
}

/// @nodoc

class _$_OzisanPageState implements _OzisanPageState {
  const _$_OzisanPageState(
      {this.question = dinnerQuestion,
      this.ozisanType = OzisanType.slim,
      this.animationType = AnimationType.none,
      this.errorMessage = ''});

  @override
  @JsonKey()
  final Question question;
  @override
  @JsonKey()
  final OzisanType ozisanType;
  @override
  @JsonKey()
  final AnimationType animationType;
  @override
  @JsonKey()
  final dynamic errorMessage;

  @override
  String toString() {
    return 'OzisanPageState(question: $question, ozisanType: $ozisanType, animationType: $animationType, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OzisanPageState &&
            const DeepCollectionEquality().equals(other.question, question) &&
            const DeepCollectionEquality()
                .equals(other.ozisanType, ozisanType) &&
            const DeepCollectionEquality()
                .equals(other.animationType, animationType) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(question),
      const DeepCollectionEquality().hash(ozisanType),
      const DeepCollectionEquality().hash(animationType),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_OzisanPageStateCopyWith<_$_OzisanPageState> get copyWith =>
      __$$_OzisanPageStateCopyWithImpl<_$_OzisanPageState>(this, _$identity);
}

abstract class _OzisanPageState implements OzisanPageState {
  const factory _OzisanPageState(
      {final Question question,
      final OzisanType ozisanType,
      final AnimationType animationType,
      final dynamic errorMessage}) = _$_OzisanPageState;

  @override
  Question get question => throw _privateConstructorUsedError;
  @override
  OzisanType get ozisanType => throw _privateConstructorUsedError;
  @override
  AnimationType get animationType => throw _privateConstructorUsedError;
  @override
  dynamic get errorMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OzisanPageStateCopyWith<_$_OzisanPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
