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
        started: (question) async {
          emit(QuestionState.inProgress(question: question));
        },
      );
    });
  }
}
