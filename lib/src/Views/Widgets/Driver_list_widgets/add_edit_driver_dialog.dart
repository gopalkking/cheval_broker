import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_outline_button.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:cheval_broker/src/Views/Widgets/textformfield.dart';
import 'package:flutter/material.dart';

class AddEditDriverDialog extends StatelessWidget {
  final String title;
  final TextEditingController driverName;
  final TextEditingController phoneNumber;
  final TextEditingController license;
  final TextEditingController experience;
  final TextEditingController landMark;
  final TextEditingController city;
  final TextEditingController state;
  final TextEditingController country;
  final TextEditingController pincode;
  final Function()? saveonPressed;
  const AddEditDriverDialog({super.key, required this.title, required this.driverName, required this.phoneNumber, required this.license, required this.experience, required this.landMark, required this.city, required this.state, required this.country, required this.pincode, this.saveonPressed});

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
            Text("Driver Details", style: Theme.of(context).textTheme.headlineSmall),
            16.vspace,
            Text(
              'Driver Name',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: driverName,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
            Text(
              'Phone Number',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: phoneNumber,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
            Text(
              'License',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: license,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
            Text(
              'Experience',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: experience,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
             Text("Address", style: Theme.of(context).textTheme.headlineSmall),
            16.vspace,
            Text(
              'Landmark',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: landMark,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
            Text(
              'City',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: city,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
            Text(
              'State',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: state,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
            Text(
              'Country',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: country,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
            Text(
              'Pincode',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: pincode,
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