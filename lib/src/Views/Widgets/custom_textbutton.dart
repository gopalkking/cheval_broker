import 'package:flutter/material.dart';

class CustomTextbutton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const CustomTextbutton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
     ThemeData theme = Theme.of(context);
    return   TextButton(
                onPressed: onPressed,
                child: Text(
                  text,
                  style: theme.textTheme.titleSmall,
                ));
  }
}