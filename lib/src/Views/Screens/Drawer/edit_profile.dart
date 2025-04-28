import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_outline_button.dart';
import 'package:cheval_broker/src/Views/Widgets/mandatory_text.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:cheval_broker/src/Views/Widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController firstName = TextEditingController();
   TextEditingController  lastName= TextEditingController();
    TextEditingController  phone = TextEditingController();
     TextEditingController email = TextEditingController();
      TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
       appBar: AppbarWidget(
        titletext: "Edit Profile",
        leadingOnPressed: () {
          Get.back();
        },
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(14),
        child: Column(
          children: [
             16.vspace,
                       const MandatoryText(text: "First Name"),
                       8.vspace,
                       Textformfieldwidget(
                         textEditingController: firstName,
                         hinttext: 'Type Here',
                         hintcolor: Colors.grey,
                         border: const BorderSide(color: Colors.grey),
                       ),
                       16.vspace,
                       const MandatoryText(text: "Last Name"),
                       8.vspace,
                       Textformfieldwidget(
                         textEditingController: lastName,
                         hinttext: 'Type Here',
                         hintcolor: Colors.grey,
                         border: const BorderSide(color: Colors.grey),
                       ),
                       16.vspace,
                       const MandatoryText(text: "Password"),
                       8.vspace,
                       Textformfieldwidget(
                         textEditingController: password,
                         hinttext: 'Type Here',
                         hintcolor: Colors.grey,
                         border: const BorderSide(color: Colors.grey),
                       ),
                       16.vspace,
                       const MandatoryText(text: "Phone Number"),
                       8.vspace,
                       Textformfieldwidget(
                         textEditingController: phone,
                         hinttext: 'Type Here',
                         hintcolor: Colors.grey,
                         border: const BorderSide(color: Colors.grey),
                       ),
                       16.vspace,
                       const MandatoryText(text: "Email"),
                       8.vspace,
                       Textformfieldwidget(
                         textEditingController: email,
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
                             onPressed: (){},
                             textsize: 18,
                           )
                         ],
                       ),
                       16.vspace
          ],
        ),
      ),
    );
  }
}