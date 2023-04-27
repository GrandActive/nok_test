import 'package:freezed_annotation/freezed_annotation.dart';

part 'possible_answer.freezed.dart';

part 'possible_answer.g.dart';


@freezed
class PossibleAnswer with _$PossibleAnswer {
  const factory PossibleAnswer({
    required int index,
    required String text,
  }) = _PossibleAnswer;

  factory PossibleAnswer.fromJson(Map<String, dynamic> json) => _$PossibleAnswerFromJson(json);
}