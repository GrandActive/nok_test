part of 'test_bloc.dart';

@freezed
class TestState with _$TestState {
  const factory TestState({
    required TestMode mode,
    @Default([]) List<TestQuestion> questions,
    @Default(null) int? selectedIndex,
    @Default(false) bool isFinished,
    @Default(true) bool isLoading,
    @Default(null) String? errorMessage,
    @Default(false) bool needFinishConfirmation,
    @Default(false) bool isUpdateNeeded,
  }) = _TestState;
}
