import 'package:flutter/material.dart';

class CommonAnswerText extends StatelessWidget {
  final String text;
  const CommonAnswerText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
    );
  }
}
