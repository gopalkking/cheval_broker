import 'package:flutter/material.dart';

class Textformfieldwidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hinttext;
  final bool? obscureText;
  final double? borderradius;
  final Color? hintcolor;
  const Textformfieldwidget({
    super.key,
    required this.textEditingController,
    this.autovalidateMode,
    this.validator,
    this.hinttext, this.suffixIcon,this.obscureText, this.borderradius, this.hintcolor, this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return TextFormField(
      controller: textEditingController,
      obscureText: obscureText??false ,
      style: Theme.of(context).textTheme.titleSmall,
      autovalidateMode: autovalidateMode,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(12),
        hintText: hinttext,
        hintStyle: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: hintcolor??theme.scaffoldBackgroundColor),
        filled: true,
        fillColor: const Color(0xFF1D1D1D),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderradius??12.0),
          borderSide: const BorderSide(color: Colors.red, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderradius??12.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
