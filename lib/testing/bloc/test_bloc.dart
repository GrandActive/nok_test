import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gip_test/testing/domain/get_random_questions_for_test.dart';
import 'package:gip_test/testing/domain/model/test_question.dart';

import 'dart:core';

import 'package:gip_test/testing/domain/model/test_mode.dart';

part 'test_event.dart';

part 'test_state.dart';

part 'test_bloc.freezed.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  TestBloc({required GetRandomQuestionsForTest getQuestions})
      : super(const TestState(mode: TestMode.exam)) {
    on<TestEvent>((event, emit) async {
      await event.when(
        started: (mode) async {
          emit(TestState(mode: mode));
          try {
            final questions = await getQuestions(count: 50);
            emit(state.copyWith(questions: questions, isLoading: false, selectedIndex: 0));
          } catch (e) {
            emit(state.copyWith(errorMessage: e.toString(), isLoading: false));
          }
        },
        selected: (index) {
          if (state.selectedIndex != index) {
            emit(state.copyWith(
              selectedIndex: index,
              selectedAnswers: {},
            ));
          }
        },
        answersSelected: (Set<int> answers) {
          emit(state.copyWith(selectedAnswers: answers));
        },
        answersSent: () {
          final question = state.questions[state.selectedIndex!];
          question.userAnswers = state.selectedAnswers;
          question.isAnsweredCorrectly =
              setEquals(state.selectedAnswers, question.source.correctAnswerIds);
          emit(state.copyWith(selectedAnswers: {}));
        },
        finished: () {
          emit(state.copyWith(
            selectedAnswers: {},
            isFinished: true,
            selectedIndex: null,
          ));
        },
        selectNextQuestion: () {
          if (state.selectedIndex != null) {
            final newIndex = state.selectedIndex! + 1;
            emit(state.copyWith(selectedIndex: newIndex));
          }
        },
      );
    });
  }
}
