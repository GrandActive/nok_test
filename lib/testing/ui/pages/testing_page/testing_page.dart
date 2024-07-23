import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/testing/bloc/testing_bloc/testing_bloc.dart';
import 'package:nok_test/testing/ui/dialogs/abort_test_dialog.dart';
import 'package:nok_test/testing/ui/dialogs/finish_test_dialog.dart';
import 'package:nok_test/testing/ui/pages/testing_page/widgets/widgets.dart';
import 'package:nok_test/testing/ui/pages/update_needed_page.dart';

@RoutePage()
class TestingPage extends StatelessWidget implements AutoRouteWrapper {
  const TestingPage({super.key});

  Future<bool?> _showAbortTestDialog(BuildContext context) {
    return showDialog<bool>(
      context: context,
      builder: (_) => const AbortTestDialog(),
    );
  }

  void _showFinishDialog(BuildContext context) {
    showDialog<bool>(
      context: context,
      builder: (_) => const FinishTestDialog(),
    ).then(
      (shouldFinish) => context
          .read<TestingBloc>()
          .add(TestingEvent.gotFinishConfirmationAnswer(confirm: shouldFinish ?? false)),
    );
  }

  void _hideKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<TestingBloc, TestingState>(
          listener: (context, state) {
            if (state.needFinishConfirmation) {
              _showFinishDialog(context);
            }
          },
        ),
        BlocListener<TestingBloc, TestingState>(
          listenWhen: (previous, current) => previous.selectedIndex != current.selectedIndex,
          listener: (context, state) => _hideKeyboard(),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _showAbortTestDialog(context).then((shouldPop) => shouldPop ?? false),
      child: Scaffold(
        appBar: const TestingAppBar(),
        body: BlocBuilder<TestingBloc, TestingState>(
          builder: (context, state) {
            if (state.isUpdateNeeded) {
              return const UpdateNeededPage();
            }

            if (state.errorMessage != null) {
              return Center(child: Text(state.errorMessage!));
            }

            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  height: 48,
                  margin: const EdgeInsets.only(top: 16),
                  child: const QuestionMap(),
                ),
                Expanded(
                  child: QuestionsPager(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
