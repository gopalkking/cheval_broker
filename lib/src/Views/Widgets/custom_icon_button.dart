import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Function()? onPressed;
  final IconData icon;
  const CustomIconButton({super.key, this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return    IconButton(
              onPressed: onPressed,
              icon: CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  icon,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            );
  }
}