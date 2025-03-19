import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nok_test/specializations/models/qualification.dart';
import 'package:nok_test/testing/data/model/question.dart';
import 'package:nok_test/testing/data/questions_repository.dart';

part 'question_list_bloc.freezed.dart';
part 'question_list_event.dart';
part 'question_list_state.dart';

@injectable
class QuestionListBloc extends Bloc<QuestionListEvent, QuestionListState> {
  QuestionListBloc(this._repository) : super(const QuestionListState.loading()) {
    on<QuestionListEvent>((event, emit) async {
      await event.when(
        started: (qualification) async {
          emit(const QuestionListState.loading());
          try {
            final questions = await _repository.getQuestions(qualification);
            if (questions == null) throw Exception("Received no questions");
            emit(QuestionListState.success(questions: questions));
          } catch (e) {
            emit(QuestionListState.failure(message: e.toString()));
          }
        },
        questionSelected: (int index) {
          state.whenOrNull(
            success: (
              questions,
              selectedQuestionIndex,
              isSelectedQuestionFirst,
              isSelectedQuestionLast,
            ) {
              emit(QuestionListState.success(
                questions: questions,
                selectedQuestionIndex: index,
                isSelectedQuestionFirst: index == 0,
                isSelectedQuestionLast: index == questions.length - 1,
              ));
            },
          );
        },
        nextQuestionRequested: () {
          state.whenOrNull(
            success: (
              questions,
              selectedQuestionIndex,
              isSelectedQuestionFirst,
              isSelectedQuestionLast,
            ) {
              final index = selectedQuestionIndex! + 1;
              emit(QuestionListState.success(
                questions: questions,
                selectedQuestionIndex: index,
                isSelectedQuestionFirst: index == 0,
                isSelectedQuestionLast: index == questions.length - 1,
              ));
            },
          );
        },
        prevQuestionRequested: () {
          state.whenOrNull(
            success: (
              questions,
              selectedQuestionIndex,
              isSelectedQuestionFirst,
              isSelectedQuestionLast,
            ) {
              final index = selectedQuestionIndex! - 1;
              emit(QuestionListState.success(
                questions: questions,
                selectedQuestionIndex: index,
                isSelectedQuestionFirst: index == 0,
                isSelectedQuestionLast: index == questions.length - 1,
              ));
            },
          );
        },
      );
    });
  }

  final QuestionsRepository _repository;
}
