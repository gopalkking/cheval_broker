import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_outline_button.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:cheval_broker/src/Views/Widgets/textformfield.dart';
import 'package:flutter/material.dart';

class AddEditVechicleDialog extends StatelessWidget {
  final String title;
  final TextEditingController vechicleType;
  final TextEditingController vechicleModel;
  final TextEditingController vechicleOwner;
  final TextEditingController ownerPhone;
  final TextEditingController vechicleNumber;
  final TextEditingController rcNumber;
  final TextEditingController insurance;
  final TextEditingController permit;
  final Function()? saveonPressed;
  const AddEditVechicleDialog(
      {super.key,
      required this.title,
      required this.vechicleType,
      this.saveonPressed, required this.vechicleModel, required this.vechicleOwner, required this.ownerPhone, required this.vechicleNumber, required this.rcNumber, required this.insurance, required this.permit});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            16.vspace,
            Center(
              child: Text(title, style: Theme.of(context).textTheme.titleLarge),
            ),
            16.vspace,
            Text(
              'Vechicle Type',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: vechicleType,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
            Text(
              'Vechicle Model',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: vechicleModel,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
            Text(
              'vechicle Owner',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: vechicleOwner,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
            Text(
              'Owner Phone',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: ownerPhone,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
            Text(
              'Vechicle Number',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: vechicleNumber,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
            Text(
              'RC Number',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: rcNumber,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
            Text(
              'Insurance',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: insurance,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
            Text(
              'Permit',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: permit,
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
      ),
    );
  }
}
