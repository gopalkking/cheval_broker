import 'package:flutter/material.dart';

class FilterWidget extends StatelessWidget {
  final Function() onPressed;
  const FilterWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Container(
        height: 46,
        width: 46,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(8)),
        child: const Icon(
          Icons.filter_alt_rounded,
          size: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
