import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/question_list/bloc/question_list_bloc/question_list_bloc.dart';
import 'package:nok_test/question_list/ui/question_viewer_page/widgets/question_nav_buttons.dart';
import 'package:nok_test/question_list/ui/question_viewer_page/widgets/question_view.dart';

@RoutePage()
class QuestionViewerPage extends StatelessWidget {
  const QuestionViewerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionListBloc, QuestionListState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => SizedBox.shrink(),
          success: (
            questions,
            selectedQuestionIndex,
            isSelectedQuestionFirst,
            isSelectedQuestionLast,
          ) {
            final question = questions[selectedQuestionIndex!];
            final questionNumber = selectedQuestionIndex + 1;

            final showPrevButton = !isSelectedQuestionFirst;
            final showNextButton = !isSelectedQuestionLast;

            return Scaffold(
              appBar: AppBar(
                leading: AutoLeadingButton(),
                title: Text('Вопрос $questionNumber'),
              ),
              body: Stack(
                children: [
                  SingleChildScrollView(
                    padding: EdgeInsets.only(top: 48),
                    child: QuestionView(question: question),
                  ),
                  Material(
                    elevation: 0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: QuestionNavButtons(
                        questionNumber: questionNumber,
                        showPrevButton: showPrevButton,
                        showNextButton: showNextButton,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
