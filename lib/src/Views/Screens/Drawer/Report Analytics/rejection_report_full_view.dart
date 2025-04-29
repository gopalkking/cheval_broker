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

class RejectionReportFullView extends StatefulWidget {
  final String? title;
  const RejectionReportFullView({super.key, this.title});

  @override
  State<RejectionReportFullView> createState() => _RejectionReportFullViewState();
}

class _RejectionReportFullViewState extends State<RejectionReportFullView> {

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
                                            const CommonQuestionText(text: "Total Enquiries"),
                                            8.vspace,
                                             const CommonQuestionText(text: "Quoted"),
                                            8.vspace,
                                             const CommonQuestionText(text: "Rejected"),
                                            8.vspace,
                                             const CommonQuestionText(text: "Rejected percentage"),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                           const CommonAnswerText(text: "6"),
                                          8.vspace,
                                             const CommonAnswerText(text: "4"),
                                          8.vspace,
                                             const CommonAnswerText(text: "5"),
                                          8.vspace,
                                             const CommonAnswerText(text: "50%"),
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