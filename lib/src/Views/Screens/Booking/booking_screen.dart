import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/Booking_widgets/bidnow_dialog.dart';
import 'package:cheval_broker/src/Views/Widgets/Booking_widgets/booking_answer_text_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/Booking_widgets/booking_question_text_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/common_answer_text.dart';
import 'package:cheval_broker/src/Views/Widgets/common_question_text.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/dialog_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/popup_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/row_title_button_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:cheval_broker/src/Views/Widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  TextEditingController bidNow = TextEditingController();
  TextEditingController search = TextEditingController();

  void showBidNowDialog(BuildContext context,) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return PopupWidget(widget: SizedBox(
          height: MediaQuery.of(context).size.height/2.8,
          child: BidnowDialog(bidNow: bidNow,saveonPressed: (){},)
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      // appBar: AppbarWidget(
      //   title: Text(
      //     "Booking",
      //     style: theme.textTheme.headlineSmall,
      //   ),
      //   leadindButton: CustomIconButton(
      //     icon: Icons.menu_sharp,
      //     onPressed: () {},
      //   ),
      //   actions: const [
      //     CustomIconButton(icon: Icons.search),
      //   ],
      // ),
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
            RowTitleButtonWidget(
              title: "Booking Enquires",
              buttontext: "View all",
              onPressed: () {
                Get.toNamed(Appnames.bookingEnquiresView);
              },
            ),
            Row(
              children: [
                const BookingQuestionTextWidget(text: "Date: "),
                BookingAnswerTextWidget(
                  text: "11 FEB 2025",
                  color: theme.splashColor,
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
                  shrinkWrap: true,
                  itemCount: 2,
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
                          Text(
                            "#2987",
                            style: theme.textTheme.headlineSmall!
                                .copyWith(fontSize: 22),
                          ),
                          8.vspace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const CommonQuestionText(text: "Goods Types"),
                                  8.vspace,
                                   const CommonQuestionText(text: "Weight"),
                                  8.vspace,
                                   const CommonQuestionText(text: "Vechicle Type"),
                                  8.vspace,
                                   const CommonQuestionText(text: "From"),
                                  8.vspace,
                                   const CommonQuestionText(text: "To"),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const CommonAnswerText(text: "Electronics & Appliances"),
                                  8.vspace,
                                    const CommonAnswerText(text: "76kg"),
                                  8.vspace,
                                    const CommonAnswerText(text: "Truck"),
                                  8.vspace,
                                    const CommonAnswerText(text: "Name"),
                                  8.vspace,
                                    const CommonAnswerText(text: "Name"),
                                ],
                              ),
                            ],
                          ),
                          16.vspace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ButtonWidget(
                                text: "Bid Now",
                                width:
                                    MediaQuery.of(context).size.width / 3.2,
                                height: 45,
                                color: const Color(Appcolors.lightblue),
                                onPressed: () {
                               showBidNowDialog(context);
                                },
                                textcolor: Colors.blue,
                                textsize: 16,
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            ),
            16.vspace,
            RowTitleButtonWidget(
              title: "Booking",
              buttontext: "View all",
              onPressed: () {
                Get.toNamed(Appnames.bookingView);
              },
            ),
            16.vspace,
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 2,
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
                                "#2987",
                                style: theme.textTheme.headlineSmall!
                                    .copyWith(fontSize: 22),
                              ),
                              IconButton(
                                  onPressed: () {
                                    Get.toNamed(Appnames.bookingFullView);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                          8.vspace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  8.vspace,
                                  const CommonQuestionText(text: "Driver"),
                                  8.vspace,
                                          const CommonQuestionText(text: "Shiping Date"),
                                  8.vspace,
                                          const CommonQuestionText(text: "Status"),
                                  8.vspace,
                                          const CommonQuestionText(text: "Weight"),
                                  8.vspace,
                                          const CommonQuestionText(text: "Vechicle Type"),
                                  8.vspace,
                                          const CommonQuestionText(text: "From"),
                                  8.vspace,
                                          const CommonQuestionText(text: "To"),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const CommonAnswerText(text: "Name"),
                                  8.vspace,
                                     const CommonAnswerText(text: "11 feb 2025"),
                                  8.vspace,
                                  BookingAnswerTextWidget(
                                    text: "in transmit",
                                    color: theme.splashColor,
                                  ),
                                  8.vspace,
                                     const CommonAnswerText(text: "76kg"),
                                  8.vspace,
                                     const CommonAnswerText(text: "Truck"),
                                  8.vspace,
                                     const CommonAnswerText(text: "Name"),
                                  8.vspace,
                                     const CommonAnswerText(text: "Name"),
                                ],
                              ),
                            ],
                          ),
                          16.vspace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ButtonWidget(
                                text: "Delete",
                                width:
                                    MediaQuery.of(context).size.width / 3.2,
                                height: 45,
                                color: const Color(Appcolors.lightred),
                                onPressed: () {
                                  alertBox();
                                },
                                textcolor: Colors.red,
                                textsize: 16,
                                icon: Icons.delete,
                                iconbutton: true,
                                iconcolor: Colors.red,
                              )
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
