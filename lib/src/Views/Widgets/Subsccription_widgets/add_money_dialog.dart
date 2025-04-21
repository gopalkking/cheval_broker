import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_outline_button.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:cheval_broker/src/Views/Widgets/textformfield.dart';
import 'package:flutter/material.dart';

class AddMoneyDialog extends StatelessWidget {
  final TextEditingController addMoney;
  final Function()? nextonPressed;
  const AddMoneyDialog({super.key, required this.addMoney, this.nextonPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Add Money",
                style: Theme.of(context).textTheme.titleLarge),
          ),
          16.vspace,
          Text(
            'Add money to your wallet',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          8.vspace,
          Text(
            'Amount',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 20
            ),
          ),
          8.vspace,
          Textformfieldwidget(
            textEditingController: addMoney,
            hinttext: 'Type Here',
            hintcolor: Colors.grey,
            border: const BorderSide(color: Colors.grey),
          ),
          24.vspace,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomOutlineButton(
                text: "Cancel",
                width: MediaQuery.of(context).size.width / 3.4,
                height: 45,
                color: Theme.of(context).splashColor,
                onPressed: () {
                  Navigator.pop(context);
                },
                textcolor: Theme.of(context).splashColor,
              ),
              26.hspace,
              ButtonWidget(
                text: "Next",
                width: MediaQuery.of(context).size.width / 3.4,
                height: 45,
                color: Theme.of(context).splashColor,
                textcolor: Colors.black,
                onPressed: nextonPressed,
                textsize: 18,
              )
            ],
          ),
          14.vspace,
        ],
      ),
    );
  }
}
