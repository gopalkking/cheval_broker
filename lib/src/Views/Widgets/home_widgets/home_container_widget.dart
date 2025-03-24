import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
class HomeContainerWidget extends StatelessWidget {
  const HomeContainerWidget({
    super.key,
    required this.context,
    required this.label,
    required this.onPressed,
    required this.widgetcontainer,
  });

  final BuildContext context;
  final String label;
  final Function()? onPressed;
  final Widget widgetcontainer;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.black),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              TextButton(
                  onPressed: onPressed,
                  child: Text(
                    "View all",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white),
                  )),
            ],
          ),
          8.vspace,
          widgetcontainer
        ],
      ),
    );
  }
}
