import 'package:flutter/material.dart';

class BookingAnswerTextWidget extends StatelessWidget {
  final String text;
  final Color?color;
  const BookingAnswerTextWidget({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
 ThemeData theme = Theme.of(context);
    return Text(
      text,
      style: theme.textTheme.bodyLarge!
          .copyWith(fontSize: 15, fontWeight: FontWeight.w300,color: color),
    );
  }
}
