import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/common_answer_text.dart';
import 'package:cheval_broker/src/Views/Widgets/common_question_text.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/dialog_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/filter_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RejectionReport extends StatefulWidget {
  const RejectionReport({super.key,});

  @override
  State<RejectionReport> createState() => _RejectionReportState();
}

class _RejectionReportState extends State<RejectionReport> {
  @override
  Widget build(BuildContext context) {
       ThemeData theme = Theme.of(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child:FilterWidget(onPressed: (){ showMenu(
                              context: context,
                              position: const RelativeRect.fromLTRB(100, 270, 0,
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
                            );})
          ),
           16.vspace,
                     Container(
                       padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black),
                       child: ListView.builder(
                          itemCount: 4,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.all(0),
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.all(6),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: theme.scaffoldBackgroundColor),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                    Row(
                                      mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Date", style: theme.textTheme.headlineSmall,),
                                        IconButton(
                                        onPressed: () {
                                          Get.toNamed(Appnames.rejectionReportFullView,arguments: {
                                            'name':'Rejection Report'
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.white,
                                        )),
                                      ],
                                    ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                            );
                          }),
                     ),
      
        ],
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
