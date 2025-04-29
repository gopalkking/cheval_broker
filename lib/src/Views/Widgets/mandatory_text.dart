
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';

class MandatoryText extends StatelessWidget {
  final String text;
  const MandatoryText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        4.hspace,
        Text(
          '*',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.red),
        ),
      ],
    );
  }
}
