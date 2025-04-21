import 'package:flutter/material.dart';

class ConsignmentTableHeaderText extends StatelessWidget {
  final String text;
  const ConsignmentTableHeaderText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8),
      child: Text(text,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black),
          textAlign: TextAlign.center),
    );
  }
}