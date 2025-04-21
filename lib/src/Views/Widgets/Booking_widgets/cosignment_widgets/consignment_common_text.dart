import 'package:flutter/material.dart';

class ConsignmentCommonText extends StatelessWidget {
  final String text;
  final double? fontSize;
  const ConsignmentCommonText({super.key, required this.text, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: Colors.black,fontSize: fontSize));
  }
}