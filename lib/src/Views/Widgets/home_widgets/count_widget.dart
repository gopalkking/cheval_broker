
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';

class CountWidget extends StatelessWidget {
  const CountWidget({
    super.key,
    required this.context,
    required this.image,
    required this.countvalue,
    required this.containername,
  });

  final BuildContext context;
  final String image;
  final String countvalue;
  final String containername;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                countvalue,
                style: Theme.of(context).textTheme.headlineSmall,
              )
            ],
          ),
          8.vspace,
          Text(
            containername,
            style: Theme.of(context).textTheme.bodyLarge,
          )
        ],
      ),
    );
  }
}