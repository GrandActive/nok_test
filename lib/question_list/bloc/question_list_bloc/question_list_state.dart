part of 'question_list_bloc.dart';

@freezed
class QuestionListState with _$QuestionListState {
  const factory QuestionListState.loading() = _Loading;

  const factory QuestionListState.success({
    required List<Question> questions,
    @Default(null) int? selectedQuestionIndex,
    @Default(false) bool isSelectedQuestionFirst,
    @Default(false) bool isSelectedQuestionLast,
  }) = _Success;

  const factory QuestionListState.failure({required String message}) = _Failure;
}
