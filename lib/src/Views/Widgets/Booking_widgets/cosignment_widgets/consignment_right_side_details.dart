import 'package:flutter/material.dart';

class ConsignmentRightSideDetails extends StatelessWidget {
  final List<String> details;
  final bool showTopBorder;
  const ConsignmentRightSideDetails({super.key, required this.details, required this.showTopBorder});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border(
          bottom: const BorderSide(color: Colors.black, width: 2),
          top: showTopBorder
              ? const BorderSide(color: Colors.black, width: 2)
              : BorderSide.none,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: details
            .map((text) => Text(text,
                style: const TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.black)))
            .toList(),
      ),
    );
  }
}
