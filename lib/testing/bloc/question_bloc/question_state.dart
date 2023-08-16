part of 'question_bloc.dart';

@freezed
class QuestionState with _$QuestionState {
  const QuestionState._();

  const factory QuestionState.initial() = _Initial;

  const factory QuestionState.inProgress({
    required TestQuestion question,
    required bool isLast,
    dynamic selectedAnswers,
  }) = _InProgress;

  TestQuestion? get question {
    return mapOrNull(
      inProgress: (value) => value.question,
    );
  }

  bool get isLast {
    return map(
      initial: (value) => false,
      inProgress: (value) => value.isLast,
    );
  }

  dynamic get selectedAnswers {
    return mapOrNull(
      inProgress: (value) => value.selectedAnswers,
    );
  }
}
