import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_outline_button.dart';
import 'package:cheval_broker/src/Views/Widgets/mandatory_text.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:cheval_broker/src/Views/Widgets/textformfield.dart';
import 'package:flutter/material.dart';

class AddEditCustomDialog extends StatelessWidget {
  final String title;
  final TextEditingController vechicelNumber;
  final TextEditingController vechicelType;
  final TextEditingController currentPincode;
  final TextEditingController preferredState;
  final TextEditingController preferredDistrict;
  final TextEditingController preferredDistrict2;
  final TextEditingController preferredDistrict3;
  final TextEditingController preferredDistrict4;
  final TextEditingController preferredDistrict5;
  final Function()? saveonPressed;
  const AddEditCustomDialog({
    super.key,
    required this.vechicelType,
    required this.vechicelNumber,
    required this.currentPincode,
    required this.preferredState,
    required this.preferredDistrict,
    this.saveonPressed,
    required this.title, required this.preferredDistrict2, required this.preferredDistrict3, required this.preferredDistrict4, required this.preferredDistrict5,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(title, style: Theme.of(context).textTheme.titleLarge),
          ),
          16.vspace,
          Text(
            'Vechicle Number',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          8.vspace,
          Textformfieldwidget(
            textEditingController: vechicelNumber,
            hinttext: 'Type Here',
            hintcolor: Colors.grey,
            border: const BorderSide(color: Colors.grey),
          ),
          16.vspace,
          Text(
            'Vechicle Type',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          8.vspace,
          Textformfieldwidget(
            textEditingController: vechicelType,
            hinttext: 'Type Here',
            hintcolor: Colors.grey,
            border: const BorderSide(color: Colors.grey),
          ),
          16.vspace,
          Text(
            'Current Location Pincode',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          8.vspace,
          Textformfieldwidget(
            textEditingController: currentPincode,
            hinttext: 'Type Here',
            hintcolor: Colors.grey,
            border: const BorderSide(color: Colors.grey),
          ),
          16.vspace,
          Text(
            'Preferred State',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          8.vspace,
          Textformfieldwidget(
            textEditingController: preferredState,
            hinttext: 'Type Here',
            hintcolor: Colors.grey,
            border: const BorderSide(color: Colors.grey),
          ),
          // 16.vspace,
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     CustomOutlineButton(text: "Add District", width: MediaQuery.of(context).size.width/3.2, height: 45, color: Theme.of(context).splashColor,onPressed:addDistrictonPressed,textcolor: Theme.of(context).splashColor,)
          //   ],
          // ),
          // 16.vspace,
          16.vspace,
          const MandatoryText(text: "Preferred District 1"),
          8.vspace,
          Textformfieldwidget(
            textEditingController: preferredDistrict,
            hinttext: 'Type Here',
            hintcolor: Colors.grey,
            border: const BorderSide(color: Colors.grey),
          ),
          16.vspace,
          const MandatoryText(text: "Preferred District 2"),
          8.vspace,
          Textformfieldwidget(
            textEditingController: preferredDistrict,
            hinttext: 'Type Here',
            hintcolor: Colors.grey,
            border: const BorderSide(color: Colors.grey),
          ),
          16.vspace,
          const MandatoryText(text: "Preferred District 3"),
          8.vspace,
          Textformfieldwidget(
            textEditingController: preferredDistrict,
            hinttext: 'Type Here',
            hintcolor: Colors.grey,
            border: const BorderSide(color: Colors.grey),
          ),
          16.vspace,
          const MandatoryText(text: "Preferred District 4"),
          8.vspace,
          Textformfieldwidget(
            textEditingController: preferredDistrict,
            hinttext: 'Type Here',
            hintcolor: Colors.grey,
            border: const BorderSide(color: Colors.grey),
          ),
          16.vspace,
          const MandatoryText(text: "Preferred District 5"),
          8.vspace,
          Textformfieldwidget(
            textEditingController: preferredDistrict,
            hinttext: 'Type Here',
            hintcolor: Colors.grey,
            border: const BorderSide(color: Colors.grey),
          ),
          18.vspace,
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
                onPressed: saveonPressed,
                textsize: 18,
              )
            ],
          ),
          16.vspace,
        ],
      ),
    );
  }
}
