import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Widgets/Booking_widgets/bidnow_dialog.dart';
import 'package:cheval_broker/src/Views/Widgets/Custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/common_answer_text.dart';
import 'package:cheval_broker/src/Views/Widgets/common_question_text.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_search_textfield.dart';
import 'package:cheval_broker/src/Views/Widgets/popup_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingEnquiresView extends StatefulWidget {
  const BookingEnquiresView({super.key});

  @override
  State<BookingEnquiresView> createState() => _BookingEnquiresViewState();
}

class _BookingEnquiresViewState extends State<BookingEnquiresView> {
    TextEditingController bidNow = TextEditingController();
    TextEditingController searchController = TextEditingController();
  bool _isSearching = false;
  String searchTerm = '';
  
   @override
  void initState() {
    super.initState();
    searchController.addListener(() {
      setState(() {
        searchTerm = searchController.text;
      });
    });
  }

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
      appBar: AppbarWidget(
              titleWidgetbool: true,
        titlewidget:_isSearching
            ?CustomSearchTextfield(textEditingController: searchController): Text("Booking Enquiries",  style: theme.textTheme.headlineSmall) , actions: [
           CustomIconButton(icon:_isSearching ? Icons.close : Icons.search,onPressed: (){
             setState(() {
                _isSearching = !_isSearching;
                if (!_isSearching) {
                  searchController.clear();
                }
              });
           },),
        ],
        leadingOnPressed: (){   Get.back();},
      ),
      body: SingleChildScrollView(
        padding:  const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Date: ",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  "11 feb 2025",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: theme.splashColor),
                ),
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
                                  const CommonQuestionText(text: "Goods Type"),
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
          ],
        ),
      ),
    );
  }
}
