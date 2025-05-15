import 'package:freezed_annotation/freezed_annotation.dart';

part 'qualification.freezed.dart';

@freezed
class Qualification with _$Qualification {
  const factory Qualification({
    required String id,
    required String name,
    required int cost,
    required int testQuestionCount,
    required int correctAnswerCount,
  }) = _Qualification;
}
