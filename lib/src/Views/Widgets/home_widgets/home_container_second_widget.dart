import 'package:cheval_broker/src/Views/Widgets/common_answer_text.dart';
import 'package:cheval_broker/src/Views/Widgets/common_question_text.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
class HomeContainer2 extends StatelessWidget {
    final ThemeData theme;
    final String id;
    final String bookingComapny;
    final String location;
    final Widget? widget;

  const HomeContainer2({
    super.key,
    required this.theme, required this.id, required this.bookingComapny, required this.location,
    this.widget
  });



  @override
  Widget build(BuildContext context) {
    return Container(
         margin: const EdgeInsets.all(6),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: theme.scaffoldBackgroundColor),
      child: Column(
        children: [
          Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
                id,
                style: theme.textTheme.headlineSmall!
                    .copyWith(fontSize: 22),
              ),
              widget??const SizedBox.shrink()
            ],
          ),
          8.vspace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CommonQuestionText(text: "Booking Company"),
                  8.vspace,
                  const CommonQuestionText(text: "Location"),
                ],
              ),
              Column(
                children: [
                  CommonAnswerText(text: bookingComapny),
                  8.vspace,
                  CommonAnswerText(text: location),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}



