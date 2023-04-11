import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gip_test/training/domain/get_random_questions_for_test.dart';
import 'package:gip_test/training/domain/model/test_question.dart';

import 'dart:core';

part 'test_event.dart';

part 'test_state.dart';

part 'test_bloc.freezed.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  TestBloc({required GetRandomQuestionsForTest getQuestions}) : super(const TestState()) {
    on<TestEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(const TestState());
          try {
            final questions = await Future.delayed(
              const Duration(milliseconds: 500),
              () => getQuestions(count: 4),
            );
            emit(state.copyWith(questions: questions, isLoading: false, selectedIndex: 0));
          } catch (e) {
            emit(state.copyWith(errorMessage: e.toString(), isLoading: false));
          }
        },
        selected: (index) {
          if (state.selectedIndex != index) {
            emit(state.copyWith(
              selectedIndex: index,
              selectedAnswers: null,
            ));
          }
        },
        answersSelected: (Set<int>? answers) {
          emit(state.copyWith(selectedAnswers: answers));
        },
        answersSent: () {
          final question = state.questions[state.selectedIndex!];
          question.userAnswers = state.selectedAnswers;
          question.isAnsweredCorrectly =
              setEquals(state.selectedAnswers, question.source.correctAnswerIndices);
          emit(state.copyWith(selectedAnswers: null));
        },
        finished: () {
          emit(state.copyWith(
            selectedAnswers: null,
            isFinished: true,
            selectedIndex: null,
          ));
        },
      );
    });
  }
}
