import 'package:cheval_broker/src/Views/Widgets/Subscription_widgets/add_money_dialog.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/common_answer_text.dart';
import 'package:cheval_broker/src/Views/Widgets/common_question_text.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/popup_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CurrentSubscribe extends StatefulWidget {
  const CurrentSubscribe({super.key});

  @override
  State<CurrentSubscribe> createState() => _CurrentSubscribeState();
}

class _CurrentSubscribeState extends State<CurrentSubscribe> {
    TextEditingController addMoney = TextEditingController();

  void showAddMoneyDialog(BuildContext context,) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return PopupWidget(widget: SizedBox(
          height: MediaQuery.of(context).size.height/2.8,
          child: AddMoneyDialog(addMoney: addMoney,nextonPressed: (){},)
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppbarWidget(
        titletext: "Premium",
        leadingOnPressed: () {
          Get.back();
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ButtonWidget(
                    text: 'Add Money',
                    textcolor: Colors.black,
                    width: MediaQuery.of(context).size.width / 2.6,
                    height: 50,
                    textsize: 18,
                    color: theme.splashColor,
                    onPressed: () {
                     showAddMoneyDialog(context);
                    },
                  ),
                  24.hspace,
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      "Wallet Balance: 20",
                      style: theme.textTheme.bodyLarge,
                    ),
                  )
                ],
              ),
              16.vspace,
              Row(
                children: [
                  Text(
                    "Current Pack: ",
                    style: theme.textTheme.headlineSmall,
                  ),
                  Text(
                    "Premium",
                    style: theme.textTheme.headlineSmall!
                        .copyWith(color: theme.splashColor),
                  )
                ],
              ),
              8.vspace,
              Text(
                "Valid upto:  25.05.2025",
                style: theme.textTheme.titleSmall,
              ),
              8.vspace,
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black),
                child: Column(
                  children: [
                    ListView.builder(
                        itemCount: 6,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.all(0),
                        itemBuilder: (context, index) {
                          return Container(
                              margin: const EdgeInsets.all(6),
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
                                    const CommonQuestionText(text: "Particle"),
                                    8.vspace,
                                    const CommonQuestionText(
                                        text: "Credit/Debit"),
                                    8.vspace,
                                    const CommonQuestionText(text: "Amount"),
                                    8.vspace,
                                    const CommonQuestionText(text: "Balance"),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const CommonAnswerText(text: "Gold"),
                                    8.vspace,
                                    Text("Debit",style: theme.textTheme.bodyLarge!.copyWith(color: Colors.red),),
                                    8.vspace,
                                    const CommonAnswerText(text: "₹56"),
                                    8.vspace,
                                    const CommonAnswerText(text: "₹2356"),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
