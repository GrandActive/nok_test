import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nok_test/user_input_question/user_input_question_bloc/user_input_question_bloc.dart';

class UserInput extends StatelessWidget {
  const UserInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: "Введите ответ",
        hintStyle: TextStyle(color: Color(0xFF9D9D9D), fontWeight: FontWeight.w400),
        isDense: true,
      ),
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      onChanged: (value) => context
          .read<UserInputQuestionBloc>()
          .add(UserInputQuestionEvent.inputChanged(answer: value == '' ? null : value)),
    );
  }
}
