import 'package:flutter/material.dart';

class ConsignmentInfoBlockWidgets extends StatelessWidget {
 final String title;
 final List<String> lines;
 final bool showTopBorder;
 final bool showBottomBorder;
  const ConsignmentInfoBlockWidgets({super.key, required this.title, required this.lines, required this.showTopBorder, required this.showBottomBorder});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border(bottom: showBottomBorder
              ?  const BorderSide(color: Colors.black, width: 2)
              : BorderSide.none,right: const BorderSide(color: Colors.black, width: 2),top: showTopBorder
              ?  const BorderSide(color: Colors.black, width: 2)
              : BorderSide.none, ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
          for (var line in lines)
            Text(line, style: const TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}