import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/common/firebase_data_source.dart';
import 'package:nok_test/specializations/models/qualification.dart';
import 'package:nok_test/testing/domain/get_random_questions_for_test.dart';
import 'package:nok_test/testing/domain/model/test_mode.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

part 'testing_bloc.freezed.dart';
part 'testing_event.dart';
part 'testing_state.dart';

@injectable
class TestingBloc extends Bloc<TestingEvent, TestingState> {
  TestingBloc(this.getQuestions) : super(const TestingState(mode: TestMode.exam)) {
    on<TestingEvent>((event, emit) async {
      await event.when(
        started: (mode, qualification) async {
          emit(TestingState(mode: mode));
          try {
            final questions = await getQuestions(qualification: qualification);
            emit(state.copyWith(questions: questions, isLoading: false, selectedIndex: 0));
          } on WrongDbVersionException {
            emit(state.copyWith(isUpdateNeeded: true, isLoading: false));
          } catch (e) {
            emit(state.copyWith(errorMessage: e.toString(), isLoading: false));
          }
        },
        selected: (index) {
          if (state.selectedIndex != index) {
            emit(state.copyWith(selectedIndex: index));
          }
        },
        selectNextQuestion: () {
          if (state.selectedIndex != null) {
            final nextIndex = state.selectedIndex! + 1;
            emit(state.copyWith(selectedIndex: nextIndex));
          }
        },
        finishRequested: () {
          final hasUnansweredQuestions = state.questions.any((q) => q.isAnsweredCorrectly == null);
          if (hasUnansweredQuestions) {
            emit(state.copyWith(needFinishConfirmation: true));
          } else {
            emit(state.copyWith(
              isFinished: true,
              selectedIndex: null,
            ));
          }
        },
        gotFinishConfirmationAnswer: (confirm) {
          if (confirm) {
            emit(state.copyWith(
              isFinished: true,
              selectedIndex: null,
              needFinishConfirmation: false,
            ));
          } else {
            emit(state.copyWith(needFinishConfirmation: false));
          }
        },
      );
    });
  }

  final GetRandomQuestionsForTest getQuestions;
}
