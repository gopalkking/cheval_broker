import 'package:flutter/material.dart';

class QuickLinkContainerWidget extends StatelessWidget {
  final String image;
  final String containername;
  final Function() onPressed;

  const QuickLinkContainerWidget({
    super.key,
    required this.image,
    required this.containername, required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width / 2.3,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.black),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(image),
                Text(
                  containername,
                  style: Theme.of(context).textTheme.bodyLarge,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}