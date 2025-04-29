import 'package:flutter/material.dart';

class CommonQuestionText extends StatelessWidget {
  final String text;
  const CommonQuestionText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: Colors.grey));
  }
}
