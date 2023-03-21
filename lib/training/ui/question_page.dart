import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gip_test/training/bloc/question_bloc.dart';

import 'question_map.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int _currentQuestion = 0;

  void setCurrentQuestion(int index) {
    setState(() {
      _currentQuestion = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Внимание, вопрос'),
      ),
      body: BlocProvider(
        create: (context) => QuestionBloc(),
        child: BlocBuilder<QuestionBloc, QuestionState>(
          builder: (context, state) {
            return Column(
              children: [
                SizedBox(
                    height: 40, child: QuestionMap(current: _currentQuestion)),
                Expanded(
                  child: PageView.builder(
                      controller: pageController,
                      itemCount: 40,
                      itemBuilder: (context, index) => const Placeholder()),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
