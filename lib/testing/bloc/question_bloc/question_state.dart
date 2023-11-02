part of 'question_bloc.dart';

@freezed
class QuestionState with _$QuestionState {
  const QuestionState._();

  const factory QuestionState.initial() = Initial;

  const factory QuestionState.inProgress({
    required TestMode mode,
    required TestQuestion question,
    required bool isLast,
    dynamic selectedAnswers,
  }) = InProgress;

  const factory QuestionState.answered({
    required TestQuestion question,
    required bool isLast,
    dynamic selectedAnswers,
    dynamic correctAnswers,
  }) = Answered;

  TestMode get mode {
    return map(
      initial: (value) => TestMode.exam,
      inProgress: (value) => value.mode,
      answered: (value) => TestMode.training,
    );
  }

  TestQuestion? get question {
    return mapOrNull(
      inProgress: (value) => value.question,
      answered: (value) => value.question,
    );
  }

  bool get isLast {
    return map(
      initial: (value) => false,
      inProgress: (value) => value.isLast,
      answered: (value) => value.isLast,
    );
  }

  dynamic get selectedAnswers {
    return mapOrNull(
      inProgress: (value) => value.selectedAnswers,
      answered: (value) => value.selectedAnswers,
    );
  }
}
