import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_outline_button.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:cheval_broker/src/Views/Widgets/textformfield.dart';
import 'package:flutter/material.dart';

class SettingsAddUserDialog extends StatelessWidget {
  final TextEditingController name;
  final TextEditingController phone;
  final TextEditingController email;
  final Function()? nextonPressed;
  final Widget dropdownWidget;
  const SettingsAddUserDialog({super.key, this.nextonPressed, required this.dropdownWidget, required this.name, required this.phone, required this.email});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Add User",
                style: Theme.of(context).textTheme.titleLarge),
          ),
          16.vspace,
          Text(
            'Name',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 20
            ),
          ),
          8.vspace,
          Textformfieldwidget(
            textEditingController: name,
            hinttext: 'Type Here',
            hintcolor: Colors.grey,
            border: const BorderSide(color: Colors.grey),
          ),
          16.vspace,
           Text(
            'Role',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 20
            ),
          ),
          8.vspace,
          dropdownWidget,
          16.vspace,

          Text(
            'Phone Number',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 20
            ),
          ),
          8.vspace,
          Textformfieldwidget(
            textEditingController: phone,
            hinttext: 'Type Here',
            hintcolor: Colors.grey,
            border: const BorderSide(color: Colors.grey),
          ),
          16.vspace,
          Text(
            'Email',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 20
            ),
          ),
          8.vspace,
          Textformfieldwidget(
            textEditingController: email,
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
                text: "Save",
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
