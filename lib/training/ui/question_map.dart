import 'package:flutter/material.dart';

class QuestionMap extends StatelessWidget {
  const QuestionMap({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        prototypeItem: const QuestionMapItem(text: 1),
        itemCount: 40,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => QuestionMapItem(text: index + 1));
  }
}

class QuestionMapItem extends StatelessWidget {
  const QuestionMapItem({super.key, required this.text});

  final int text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilledButton.tonal(
          onPressed: () {},
          style: const ButtonStyle(),
          child: Text(text.toString()),
        ),
      ],
    );
  }
}
