import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_outline_button.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:cheval_broker/src/Views/Widgets/textformfield.dart';
import 'package:flutter/material.dart';
class AddEditVechicleDialog extends StatefulWidget {
  final String title;
  final TextEditingController vechicleNumber;
  final TextEditingController vechicleModel;
  final TextEditingController vechicleType;
  final TextEditingController rcNumber;
  final TextEditingController rcExpires;
  final TextEditingController permitNumber;
  final TextEditingController permitExpires;
  final TextEditingController pucStatus;
  final TextEditingController insuranceNumber;
  final TextEditingController insuranceExpires;
  final TextEditingController ownerName;
  final TextEditingController ownerPhone;
  final TextEditingController driverName;
  final TextEditingController driverPhone;
  final Function() rcExpiresOnTap;
  final Function() permitExpiresOnTap;
  final Function() insuranceExpiresOnTap;
  final Function()? saveonPressed;
  const AddEditVechicleDialog(
      {super.key,
      required this.title,
      required this.vechicleNumber,
      this.saveonPressed,
      required this.vechicleModel,
      required this.vechicleType,
      required this.rcNumber,
      required this.rcExpires,
      required this.permitNumber,
      required this.permitExpires,
      required this.pucStatus,
      required this.insuranceNumber,
      required this.insuranceExpires,
      required this.ownerName,
      required this.ownerPhone,
      required this.driverName,
      required this.driverPhone, required this.rcExpiresOnTap, required this.permitExpiresOnTap, required this.insuranceExpiresOnTap});

  @override
  State<AddEditVechicleDialog> createState() => _AddEditVechicleDialogState();
}

class _AddEditVechicleDialogState extends State<AddEditVechicleDialog> {
  bool isSameAsOwner = false;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            16.vspace,
            Center(
              child: Text(widget.title,
                  style: Theme.of(context).textTheme.titleLarge),
            ),
            16.vspace,
            Text(
              'Vechicle Details',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: theme.splashColor),
            ),
            16.vspace,
            Text(
              'Vechicle Number',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: widget.vechicleNumber,
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
              textEditingController: widget.vechicleModel,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
            Text(
              'vechicle Type',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: widget.vechicleType,
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
              textEditingController: widget.rcNumber,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
            Text(
              'RC Expires',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: widget.rcExpires,
              hinttext: 'dd/mm/yy',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
              onTap: widget.rcExpiresOnTap,
            ),
            16.vspace,
            Text(
              'Permit Number',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: widget.permitNumber,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
            Text(
              'Permit Expires',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: widget.permitExpires,
              hinttext: 'dd/mm/yy',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
              onTap: widget.permitExpiresOnTap,
            ),
            16.vspace,
            Text(
              'PUC Status',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: widget.pucStatus,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
            Text(
              'Insurance Number',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: widget.insuranceNumber,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
            Text(
              'Insurance Expires',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: widget.insuranceExpires,
              hinttext: 'dd/mm/yy',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
              onTap: widget.insuranceExpiresOnTap,
            ),
            16.vspace,
            Text(
              'Owner Details',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: theme.splashColor),
            ),
            16.vspace,
            Text(
              'Owner Name',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: widget.ownerName,
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
              textEditingController: widget.ownerPhone,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
            Row(
              children: [
                Checkbox(
                  value: isSameAsOwner,
                  onChanged: (value) {
                    setState(() {
                      isSameAsOwner = value!;
                      if (isSameAsOwner) {
                        widget.driverName.text = widget.ownerName.text;
                        widget.driverPhone.text = widget.ownerPhone.text;
                      } else {
                        widget.driverName.clear();
                        widget.driverPhone.clear();
                      }
                    });
                  },
                  checkColor: Colors.white, 
                  activeColor: theme.splashColor, 
                  side: const BorderSide(
                      color: Colors.white), 
                ),
                const SizedBox(width: 8),
                Text(
                  'Driver and owner are same',
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
            Text(
              'Driver Details',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: theme.splashColor),
            ),
            16.vspace,
            Text(
              'Driver Name',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: widget.driverName,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
              readOnly: !isSameAsOwner,
            ),
            16.vspace,
            Text(
              'Phone Number',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: widget.driverPhone,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
              readOnly: !isSameAsOwner,
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
                  onPressed: widget.saveonPressed,
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
