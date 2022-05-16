import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:question_ozisan/gen/assets.gen.dart';

part 'answer.freezed.dart';

@freezed
class Answer with _$Answer {
  const factory Answer({
    required String text,
    required OzisanType ozisanType,
  }) = _Answer;
}

enum OzisanType {
  slim('slim'),
  fat('fat');

  const OzisanType(this.value);
  final String value;

  String get asset {
    switch (this) {
      case OzisanType.slim:
        return Assets.image.slim.path;
      case OzisanType.fat:
        return Assets.image.fat.path;
    }
  }
}
