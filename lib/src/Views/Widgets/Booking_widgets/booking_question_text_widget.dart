import 'package:flutter/material.dart';

class BookingQuestionTextWidget extends StatelessWidget {
  final String text;
  const BookingQuestionTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
 ThemeData theme = Theme.of(context);
    return Text(
      text,
      style: theme.textTheme.bodyLarge,
    );
  }
}
