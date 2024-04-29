part of 'matching_question_bloc.dart';

@freezed
class MatchingQuestionState with _$MatchingQuestionState {
  const MatchingQuestionState._();

  const factory MatchingQuestionState.initial() = Initial;

  const factory MatchingQuestionState.inProgress({
    required TestMode mode,
    required TestMatchingQuestion question,
    required bool isLast,
    required Map<int, int?> selectedAnswers,
  }) = InProgress;

  const factory MatchingQuestionState.answered({
    required TestMatchingQuestion question,
    required bool isLast,
    required Map<int, int?> selectedAnswers,
    required Map<int, int?> correctAnswers,
  }) = Answered;

  TestMode get mode {
    return map(
      initial: (value) => TestMode.exam,
      inProgress: (value) => value.mode,
      answered: (value) => TestMode.training,
    );
  }

  TestMatchingQuestion? get question {
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

  Map<int, int?>? get selectedAnswers {
    return mapOrNull(
      inProgress: (value) => value.selectedAnswers,
      answered: (value) => value.selectedAnswers,
    );
  }
}
