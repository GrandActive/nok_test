part of 'testing_bloc.dart';

@freezed
class TestingState with _$TestingState {
  const factory TestingState({
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
