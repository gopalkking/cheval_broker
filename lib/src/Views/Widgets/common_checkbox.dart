import 'package:flutter/material.dart';

class CommonCheckbox extends StatelessWidget {
  final bool value;
  final Color? activeColor;
   final ValueChanged<bool?>? onChanged;
  const CommonCheckbox({super.key, required this.value,this.activeColor, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Checkbox(value: value, 
                       side: const BorderSide(color: Colors.white),
                       activeColor: activeColor??theme.splashColor,
                       
                      onChanged:onChanged);
  }
}