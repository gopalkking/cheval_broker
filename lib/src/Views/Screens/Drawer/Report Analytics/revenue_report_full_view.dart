import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/common_answer_text.dart';
import 'package:cheval_broker/src/Views/Widgets/common_question_text.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/dialog_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RevenueReportFullView extends StatefulWidget {
  final String? title;
  const RevenueReportFullView({super.key, this.title});

  @override
  State<RevenueReportFullView> createState() => _RevenueReportFullViewState();
}

class _RevenueReportFullViewState extends State<RevenueReportFullView> {

  @override
  Widget build(BuildContext context) {
      ThemeData theme = Theme.of(context);
       final data = Get.arguments;
    final name = data['name'];
    return Scaffold(
      appBar: AppbarWidget(titletext: name,leadingOnPressed: (){Get.back();},),
     body: SingleChildScrollView(
            padding:  const EdgeInsets.all(12.0),
          child: Container(
            padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black),
                    child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: theme.scaffoldBackgroundColor),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                                 const CommonQuestionText(text: "No of Enquiry"),
                                                8.vspace,
                                                 const CommonQuestionText(text: "Bids Count"),
                                                8.vspace,
                                                 const CommonQuestionText(text: "Bids Accepted"),
                                                8.vspace,
                                                 const CommonQuestionText(text: "Bid Amount"),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                                 const CommonAnswerText(text: "4"),
                                              8.vspace,
                                                 const CommonAnswerText(text: "Count"),
                                              8.vspace,
                                                 const CommonAnswerText(text: "₹56778"),
                                              8.vspace,
                                                 const CommonAnswerText(text: "₹2356"),
                                    ],
                                  ),
                                ],
                              ),
                                16.vspace,
                                  ButtonWidget(
                                    text: 'Delete',
                                    iconbutton: true,
                                    icon: Icons.delete,
                                    iconcolor: Colors.red,
                                    textcolor: Colors.red,
                                    width: MediaQuery.of(context).size.width /
                                        3.8,
                                    height: 48,
                                    color: const Color(Appcolors.lightred),
                                    onPressed: () {
                                      alertBox();
                                    },
                                  ),
                            ],
                          ),
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