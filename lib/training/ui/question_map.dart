import 'package:flutter/material.dart';

class QuestionMap extends StatelessWidget {
  const QuestionMap({super.key, required this.current});

  final int? current;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.only(top: 8, bottom: 8),
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: 40,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            QuestionMapItem(text: index + 1, isSelected: index == current));
  }
}

class QuestionMapItem extends StatelessWidget {
  const QuestionMapItem(
      {super.key, required this.text, required this.isSelected});

  final int text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    BorderRadius borderRadius;
    if (isSelected) {
      borderRadius = const BorderRadius.all(Radius.circular(16));
    } else {
      borderRadius = BorderRadius.zero;
    }
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      child: SizedBox(
        height: 24,
        width: 24,
        child: FilledButton.tonal(
          style: ButtonStyle(
            shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: borderRadius)),
            padding: const MaterialStatePropertyAll(EdgeInsets.all(4)),
          ),
          onPressed: () {},
          child: Text(text.toString()),
        ),
      ),
    );
  }
}
