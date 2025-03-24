import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/Custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/Driver_list_widgets/add_edit_driver_dialog.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/common_answer_text.dart';
import 'package:cheval_broker/src/Views/Widgets/common_question_text.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/dialog_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/popup_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class DriverList extends StatefulWidget {
  const DriverList({super.key});

  @override
  State<DriverList> createState() => _DriverListState();
}

class _DriverListState extends State<DriverList> {
  TextEditingController driverName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController license = TextEditingController();
  TextEditingController experience = TextEditingController();
  TextEditingController landMark = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController pincode = TextEditingController();
  void showCustomDialog(BuildContext context, String title) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return PopupWidget(widget: AddEditDriverDialog(title: title, driverName: driverName, phoneNumber: phoneNumber, license: license, experience: experience, landMark: landMark, city: city, state: state, country: country, pincode: pincode,saveonPressed: (){},));
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppbarWidget(
        title: Text(
          "Driver List",
          style: theme.textTheme.headlineSmall,
        ),
        leadindButton: CustomIconButton(
          icon: Icons.menu_sharp,
          onPressed: () {},
        ),
        actions: const [
          CustomIconButton(icon: Icons.search),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonWidget(
                  text: '+ Add Driver',
                  textcolor: Colors.black,
                  width: MediaQuery.of(context).size.width / 1.8,
                  height: 50,
                  color: theme.splashColor,
                  onPressed: () {
                    showCustomDialog(context, "Add/Driver");
                  },
                ),
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    height: 46,
                    width: 46,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(
                      Icons.filter_alt_rounded,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            16.vspace,
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.black),
              child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(0),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(6),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: theme.scaffoldBackgroundColor),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {
                                 Get.toNamed(Appnames.driverListFullView);
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const CommonQuestionText(text: "Driver Name"),
                                  8.vspace,
                                  const CommonQuestionText(
                                      text: "Phone Number"),
                                  8.vspace,
                                  const CommonQuestionText(text: "Address"),
                                  8.vspace,
                                  const CommonQuestionText(text: "License"),
                                  8.vspace,
                                  const CommonQuestionText(text: "Experience"),
                                  8.vspace,
                                  const CommonQuestionText(text: "Ratings"),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const CommonAnswerText(text: "Name"),
                                  8.vspace,
                                  const CommonAnswerText(text: "00000 00000"),
                                  8.vspace,
                                  const CommonAnswerText(text: "Coimbatore"),
                                  8.vspace,
                                  const CommonAnswerText(text: "#2456"),
                                  8.vspace,
                                  const CommonAnswerText(text: "2 years"),
                                  8.vspace,
                                  RatingBarIndicator(
                                    rating: 3.5,
                                    itemSize: 20,
                                    itemBuilder: (context, index) => const Icon(
                                        Icons.star,
                                        color: Colors.yellow),
                                    unratedColor: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          16.vspace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ButtonWidget(
                                text: 'Edit',
                                iconbutton: true,
                                icon: Icons.edit,
                                iconcolor: Colors.blue,
                                textcolor: Colors.blue,
                                width: MediaQuery.of(context).size.width / 3.8,
                                height: 48,
                                color: const Color(Appcolors.lightblue),
                                onPressed: () {
                                   showCustomDialog(context, "Edit/Driver");
                                },
                              ),
                              26.hspace,
                              ButtonWidget(
                                text: 'Delete',
                                iconbutton: true,
                                icon: Icons.delete,
                                iconcolor: Colors.red,
                                textcolor: Colors.red,
                                width: MediaQuery.of(context).size.width / 3.8,
                                height: 48,
                                color: const Color(Appcolors.lightred),
                                onPressed: () {
                                  alertBox();
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  alertBox() {
    return showDialog(
        context: context,
        builder: (context) {
          return MyDialogWidget(
            text1: 'Are you Sure?',
            text2: ' Are you sure? Do you want to delete Permanently (name).',
            buttontext: 'Delete',
            canceltext: 'Cancel',
            onPressed: () {
              Navigator.pop(context);
            },
            cancelButton: () {
              Navigator.pop(context);
            },
            imagetext: Appimage.delete,
          );
        });
  }
}
