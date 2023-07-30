import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nok_test/testing/domain/model/test_question.dart';

part 'question_event.dart';

part 'question_state.dart';

part 'question_bloc.freezed.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  QuestionBloc() : super(const QuestionState.initial()) {
    on<QuestionEvent>((event, emit) async {
      await event.when(
        started: (question, isLast) async {
          emit(QuestionState.inProgress(question: question, isLast: isLast));
        },
        answerSelected: (answer) async {
          final question = state.question;
          switch (question) {
            case TestSelectionQuestion():
              question.userAnswers = answer;
              question.isAnsweredCorrectly =
                  answer.isEmpty ? null : setEquals(answer, question.source.correctAnswerIds);
              emit(QuestionState.inProgress(
                question: question,
                isLast: state.isLast,
                selectedAnswers: answer,
              ));
              break;
            case TestUserInputQuestion():
              break;
            default:
              // TODO: add other questions
              break;
          }
        },
      );
    });
  }
}
