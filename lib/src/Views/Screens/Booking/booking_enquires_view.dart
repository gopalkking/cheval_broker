import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Widgets/Booking_widgets/bidnow_dialog.dart';
import 'package:cheval_broker/src/Views/Widgets/Custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/back_arrow_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
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
        title: Text(
          "Booking Enquires",
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
                                  Text(
                                    "Goods Type",
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                  8.vspace,
                                  Text(
                                    "Weight",
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                  8.vspace,
                                  Text(
                                    "Vechicle Type",
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                  8.vspace,
                                  Text(
                                    "From",
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                  8.vspace,
                                  Text(
                                    "To",
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Electronics & Appliances",
                                    style: theme.textTheme.bodyLarge!
                                        .copyWith(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                  ),
                                  8.vspace,
                                  Text(
                                    "76kg",
                                    style: theme.textTheme.bodyLarge!
                                        .copyWith(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                  ),
                                  8.vspace,
                                  Text(
                                    "Truck",
                                    style: theme.textTheme.bodyLarge!
                                        .copyWith(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                  ),
                                  8.vspace,
                                  Text(
                                    "Name",
                                    style: theme.textTheme.bodyLarge!
                                        .copyWith(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                  ),
                                  8.vspace,
                                  Text(
                                    "Name",
                                    style: theme.textTheme.bodyLarge!
                                        .copyWith(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                  ),
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
