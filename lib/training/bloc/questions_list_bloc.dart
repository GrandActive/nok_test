import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'questions_list_event.dart';
part 'questions_list_state.dart';
part 'questions_list_bloc.freezed.dart';

class QuestionsListBloc extends Bloc<QuestionsListEvent, QuestionsListState> {
  QuestionsListBloc() : super(const QuestionsListState.initial()) {
    on<QuestionsListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
