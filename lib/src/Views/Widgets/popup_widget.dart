import 'package:flutter/material.dart';

class PopupWidget extends StatelessWidget {
  final Widget widget;
  const PopupWidget({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                 widget,
                  Positioned(
                    top: -22,
                    right: -22,
                    child: IconButton(
                      icon: const Icon(Icons.cancel_rounded,
                          color: Colors.white, size: 36),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
  }
}