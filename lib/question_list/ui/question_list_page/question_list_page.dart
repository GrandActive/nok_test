import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/common/widgets/no_connection_banner.dart';
import 'package:nok_test/question_list/bloc/question_list_bloc/question_list_bloc.dart';
import 'package:nok_test/question_list/ui/question_list_page/widgets/question_list_item.dart';
import 'package:nok_test/question_list/ui/question_list_page/widgets/question_list_scrollbar.dart';
import 'package:nok_test/specializations/bloc/qualification_select_bloc/qualification_select_bloc.dart';

@RoutePage()
class QuestionListPage extends StatelessWidget {
  const QuestionListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final qualification = context.watch<QualificationSelectBloc>().state.selectedQualification!;

    return Scaffold(
      appBar: AppBar(
        leading: const AutoLeadingButton(),
        title: const Text('Все вопросы'),
      ),
      body: BlocBuilder<QuestionListBloc, QuestionListState>(
        builder: (context, state) {
          return state.when(
            loading: () => Center(
              child: CircularProgressIndicator(),
            ),
            failure: (message) => Center(
              child: NoConnectionBanner(
                onRetry: () {
                  context
                      .read<QuestionListBloc>()
                      .add(QuestionListEvent.started(qualification: qualification));
                },
              ),
            ),
            success: (questions, _, __, ___) => QuestionListScrollbar(
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                itemCount: questions.length,
                itemBuilder: (context, index) => QuestionListItem(
                  question: questions[index],
                  index: index,
                ),
                separatorBuilder: (context, index) => const SizedBox(height: 16),
              ),
            ),
          );
        },
      ),
    );
  }
}
