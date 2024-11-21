import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/injection.dart';
import 'package:nok_test/question_list/bloc/question_list_bloc/question_list_bloc.dart';

@RoutePage()
class QuestionListWrapperPage extends StatelessWidget implements AutoRouteWrapper {
  const QuestionListWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<QuestionListBloc>(
      create: (context) => getIt<QuestionListBloc>()..add(QuestionListEvent.started()),
      child: this,
    );
  }
}
