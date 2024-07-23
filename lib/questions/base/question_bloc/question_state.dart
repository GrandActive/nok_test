part of 'question_bloc.dart';

@freezed
class QuestionState<Q, A> with _$QuestionState {
  const QuestionState._();

  const factory QuestionState.initial() = Initial;

  const factory QuestionState.inProgress({
    required TestMode mode,
    required Q question,
    required bool isLast,
    required A selectedAnswers,
  }) = InProgress;

  const factory QuestionState.answered({
    required Q question,
    required bool isLast,
    required A selectedAnswers,
    required A correctAnswers,
  }) = Answered;

  TestMode get mode {
    return map(
      initial: (value) => TestMode.exam,
      inProgress: (value) => value.mode,
      answered: (value) => TestMode.training,
    );
  }

  Q? get question {
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

  A? get selectedAnswers {
    return mapOrNull(
      inProgress: (value) => value.selectedAnswers,
      answered: (value) => value.selectedAnswers,
    );
  }
}
