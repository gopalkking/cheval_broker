import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Widgets/Custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/common_answer_text.dart';
import 'package:cheval_broker/src/Views/Widgets/common_question_text.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpSupport extends StatefulWidget {
  const HelpSupport({super.key});

  @override
  State<HelpSupport> createState() => _HelpSupportState();
}

class _HelpSupportState extends State<HelpSupport> {
  @override
  Widget build(BuildContext context) {
   ThemeData theme = Theme.of(context);
    return Scaffold(
           appBar: AppbarWidget(
        titletext: "Help & Support",
        leadingOnPressed: () {
          Get.back();
        },
        actions: const [
          CustomIconButton(icon: Icons.search),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [
             Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonWidget(
                        text: 'Raise Ticket',
                        textcolor: Colors.black,
                        width: MediaQuery.of(context).size.width / 1.8,
                        height: 50,
                        color: theme.splashColor,
                        onPressed: () {
                         // showCustomDialog(context, "Add/Vechicle");
                        },
                      ),
                        IconButton(
                        onPressed: () {},
                        icon: Container(
                          height: 46,
                          width: 46,
                          decoration:  BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8)),
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
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: theme.scaffoldBackgroundColor),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                  IconButton(
                                  onPressed: () {
                                   // Get.toNamed(Appnames.vechicleListFullView);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  )),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const CommonQuestionText(text: "Vechicle Type"),
                                          8.vspace,
                                           const CommonQuestionText(text: "Vechicle Model"),
                                          8.vspace,
                                           const CommonQuestionText(text: "Vechicle Owner"),
                                          8.vspace,
                                           const CommonQuestionText(text: "Owner Phone"),
                                          8.vspace,
                                           const CommonQuestionText(text: "Vechicle No"),
                                          8.vspace,
                                           const CommonQuestionText(text: "Insurance"),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        const CommonAnswerText(text: "Truck"),
                                        8.vspace,
                                           const CommonAnswerText(text: "Truck"),
                                        8.vspace,
                                           const CommonAnswerText(text: "Name"),
                                        8.vspace,
                                           const CommonAnswerText(text: "Name"),
                                        8.vspace,
                                           const CommonAnswerText(text: "#2456"),
                                        8.vspace,
                                           const CommonAnswerText(text: "#2456"),
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
                                      width: MediaQuery.of(context).size.width /
                                          3.8,
                                      height: 48,
                                      color: const Color(Appcolors.lightblue),
                                      onPressed: () {
                                       // showCustomDialog(context, "Edit/Vehicle");
                                      },
                                    ),
                                    26.hspace,
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
                                        //alertBox();
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
}