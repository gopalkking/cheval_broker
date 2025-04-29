import 'package:flutter/material.dart';

class RowTitleButtonWidget extends StatelessWidget {
  final String title;
  final String buttontext;
  final Function()? onPressed;

  const RowTitleButtonWidget({super.key, required this.title, this.onPressed, required this.buttontext});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextButton(
                      onPressed: onPressed,
                      child: Text(
                        buttontext,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white),
                      )),
                ],
              );
  }
}