import 'package:flutter/material.dart';

class InvoiceTableCellTextWidget extends StatelessWidget {
  final String text;
  final bool? bold;
  final Color? color;
  const InvoiceTableCellTextWidget({super.key, required this.text,this.color,this.bold});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: bold??false ? FontWeight.bold : FontWeight.normal,
          color: color??Colors.black,
        ),
      ),
    );
  }
}