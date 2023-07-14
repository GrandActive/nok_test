part of 'test_bloc.dart';

@freezed
class TestState with _$TestState {
  const factory TestState({
    required TestMode mode,
    @Default([]) List<TestQuestion> questions,
    @Default(null) int? selectedIndex,
    dynamic selectedAnswers,
    @Default(false) bool isFinished,
    @Default(true) bool isLoading,
    @Default(null) String? errorMessage,
  }) = _TestState;
}
