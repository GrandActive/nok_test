part of 'sequence_question_bloc.dart';

@freezed
class SequenceQuestionState with _$SequenceQuestionState {
  const SequenceQuestionState._();

  const factory SequenceQuestionState.initial() = Initial;

  const factory SequenceQuestionState.inProgress({
    required TestMode mode,
    required TestSequenceQuestion question,
    required bool isLast,
    required List<PossibleAnswer> selectedAnswers,
  }) = InProgress;

  const factory SequenceQuestionState.answered({
    required TestSequenceQuestion question,
    required bool isLast,
    required List<PossibleAnswer> selectedAnswers,
    required List<int> correctAnswers,
  }) = Answered;

  TestMode get mode {
    return map(
      initial: (value) => TestMode.exam,
      inProgress: (value) => value.mode,
      answered: (value) => TestMode.training,
    );
  }

  TestSequenceQuestion? get question {
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

  List<PossibleAnswer>? get selectedAnswers {
    return mapOrNull(
      inProgress: (value) => value.selectedAnswers,
      answered: (value) => value.selectedAnswers,
    );
  }
}
