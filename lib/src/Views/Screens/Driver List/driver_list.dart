import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/Driver_list_widgets/add_edit_driver_dialog.dart';
import 'package:cheval_broker/src/Views/Widgets/common_answer_text.dart';
import 'package:cheval_broker/src/Views/Widgets/common_question_text.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/dialog_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/filter_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/popup_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:cheval_broker/src/Views/Widgets/textformfield.dart';
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
  TextEditingController search = TextEditingController();
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
             SizedBox(
                width: MediaQuery.of(context).size.width / 1,
                child: Center(
                    child: Textformfieldwidget(
                  textEditingController: search,
                  borderradius: 24,
                  hinttext: "Search",
                  hintcolor: Colors.white,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ))),
            16.vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonWidget(
                  text: '+ Add Driver',
                  textcolor: Colors.black,
                  textsize: 20,
                  width: MediaQuery.of(context).size.width / 1.8,
                  height: 50,
                  color: theme.splashColor,
                  onPressed: () {
                    showCustomDialog(context, "Add/Driver");
                  },
                ),
                FilterWidget(onPressed: (){
                   showMenu(
                              context: context,
                              position: const RelativeRect.fromLTRB(100, 250, 0,
                                  0), 
                                  color: Colors.black,
                              items: [
                                PopupMenuItem(
                                  value: 'option1',
                                  child: Text('This Month',style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),),
                                ),
                                PopupMenuItem(
                                  value: 'option1',
                                  child: Text('Last Month',style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),),
                                ),
                                 PopupMenuItem(
                                  value: 'option1',
                                  child: Text('Last 3 Month',style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),),
                                ),
                                PopupMenuItem(
                                  value: 'option2',
                                  child: Text('Last 6 Months',style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),),
                                ),
                              ],
                            );
                })
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
