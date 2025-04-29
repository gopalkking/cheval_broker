import 'package:flutter/material.dart';

class InvoiceText extends StatelessWidget {
  final String text;
  const InvoiceText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return   Text(text, style: const TextStyle(color: Colors.black));
  }
}