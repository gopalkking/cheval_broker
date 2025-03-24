import 'package:cheval_broker/src/Views/Widgets/Booking_widgets/booking_answer_text_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/Booking_widgets/booking_question_text_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/Custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/back_arrow_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VechicleListFullView extends StatefulWidget {
  const VechicleListFullView({super.key});

  @override
  State<VechicleListFullView> createState() => _VechicleListFullViewState();
}

class _VechicleListFullViewState extends State<VechicleListFullView> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
              appBar: AppbarWidget(
          title: Text(
            "#24637",
            style: theme.textTheme.headlineSmall,
          ),
          leadindButton: BackArrowWidget(
            backgroundColor: Colors.black,
            iconcolor: Colors.white,
            onPressed: () {
              Get.back();
            },
            padingValue: 10,
          ),
          actions: const [
            CustomIconButton(icon: Icons.search),
          ],
        ),
        body: SingleChildScrollView(
            padding:  const EdgeInsets.all(14.0),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const BookingQuestionTextWidget(text: "Vechicle Type"),
                                  8.vspace,
                                  const BookingQuestionTextWidget(text: "Vechicle Model"),
                                  8.vspace,
                                  const BookingQuestionTextWidget(text: "Vechicle Owner"),
                                  8.vspace,
                                  const BookingQuestionTextWidget(text: "Owner Phone"),
                                  8.vspace,
                                  const BookingQuestionTextWidget(text: "Vechicle No"),
                                  8.vspace,
                                  const BookingQuestionTextWidget(text: "RC Number"),
                                  8.vspace,
                                  const BookingQuestionTextWidget(text: "Insurance"),
                                  8.vspace,
                                  const BookingQuestionTextWidget(text: "Permit"),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const BookingAnswerTextWidget(text: "Truck"),
                                  8.vspace,
                                  const BookingAnswerTextWidget(text: "#2356"),
                                  8.vspace,
                                  const BookingAnswerTextWidget(text: "Name"),
                                  8.vspace,
                                  const BookingAnswerTextWidget(text: "9894890950"),
                                  8.vspace,
                                  const BookingAnswerTextWidget(text: "Number"),
                                  8.vspace,
                                  const BookingAnswerTextWidget(text: "Number"),
                                  8.vspace,
                                  const BookingAnswerTextWidget(text: "Number"),
                                  8.vspace,
                                  const BookingAnswerTextWidget(text: "Number"),
                                ],
                              ),
                            ],
                          ),
                    ),
          ),
        ),
    );
  }
}