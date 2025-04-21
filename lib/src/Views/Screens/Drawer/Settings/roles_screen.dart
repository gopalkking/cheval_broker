import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/Custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/common_answer_text.dart';
import 'package:cheval_broker/src/Views/Widgets/common_question_text.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/dialog_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RolesScreen extends StatefulWidget {
  const RolesScreen({super.key});

  @override
  State<RolesScreen> createState() => _RolesScreenState();
}

class _RolesScreenState extends State<RolesScreen> {
  @override
  Widget build(BuildContext context) {
      ThemeData theme = Theme.of(context);
    return Scaffold(
       appBar: AppbarWidget(
        titletext: "Roles",
        leadingOnPressed: () {
          Get.back();
        },
        actions: const [
          CustomIconButton(icon: Icons.search),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
                        Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(0),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(6),
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: theme.scaffoldBackgroundColor),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Name",
                                    style: theme.textTheme.headlineSmall!
                                        .copyWith(fontSize: 22),
                                  ),
                                        IconButton(onPressed: (){
                                         //  Get.toNamed(Appnames.bookingFullView);
                                        }, icon: const Icon(Icons.arrow_forward_ios,color: Colors.white,)),
                                ],
                              ),
                              8.vspace,
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                  CommonQuestionText(text: "Designation"),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                  CommonAnswerText(text: "Admin"),
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
                                  // showCustomDialog(context, "Edit/Driver");
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
                              )
                            ],
                          ),
                        );
                      }),
                ),
            ],
          ),
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