part of 'selection_question_bloc.dart';

@freezed
class SelectionQuestionState with _$SelectionQuestionState {
  const SelectionQuestionState._();

  const factory SelectionQuestionState.initial() = Initial;

  const factory SelectionQuestionState.inProgress({
    required TestMode mode,
    required TestSelectionQuestion question,
    required bool isLast,
    required Set<int> selectedAnswers,
  }) = InProgress;

  const factory SelectionQuestionState.answered({
    required TestSelectionQuestion question,
    required bool isLast,
    required Set<int> selectedAnswers,
    required Set<int> correctAnswers,
  }) = Answered;

  TestMode get mode {
    return map(
      initial: (value) => TestMode.exam,
      inProgress: (value) => value.mode,
      answered: (value) => TestMode.training,
    );
  }

  TestSelectionQuestion? get question {
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

  Set<int>? get selectedAnswers {
    return mapOrNull(
      inProgress: (value) => value.selectedAnswers,
      answered: (value) => value.selectedAnswers,
    );
  }
}
