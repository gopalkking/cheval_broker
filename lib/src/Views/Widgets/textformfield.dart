import 'package:flutter/material.dart';

class Textformfieldwidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final String? hinttext;
  final bool obscureText;
  const Textformfieldwidget({
    super.key,
    required this.textEditingController,
    this.autovalidateMode,
    this.validator,
    this.hinttext, this.suffixIcon,required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return TextFormField(
      controller: textEditingController,
      obscureText: obscureText ,
      style: Theme.of(context).textTheme.titleSmall,
      autovalidateMode: autovalidateMode,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(12),
        hintText: hinttext,
        hintStyle: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: theme.scaffoldBackgroundColor),
        filled: true,
        fillColor: const Color(0xFF1D1D1D),
        suffixIcon: suffixIcon,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: Colors.red, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
