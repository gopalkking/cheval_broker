import 'package:flutter/material.dart';

class SettingCheckboxWidget extends StatelessWidget {
  final Widget widget;
  final String text;
  const SettingCheckboxWidget({super.key, required this.widget, required this.text});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return   Row(
                      children: [
                       widget,
                        Text(
                          text,
                          style: theme.textTheme.bodyLarge,
                        )
                      ],
                    );
  }
}