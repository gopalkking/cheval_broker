import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_textbutton.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            34.vspace,
            CustomTextbutton(text: "Booking Enquiries", onPressed: () {
               Get.toNamed(Appnames.bookingEnquiresView);
            }),
            16.vspace,
            CustomTextbutton(text: "Booking", onPressed: () {}),
            16.vspace,
            CustomTextbutton(text: "Daily Availability", onPressed: () {
                Get.toNamed(Appnames.dailyAvailability);
            }),
            16.vspace,
            CustomTextbutton(text: "Vechicle List", onPressed: () {
              
            }),
            16.vspace,
            CustomTextbutton(text: "Driver List", onPressed: () {
              
            }),
            16.vspace,
            CustomTextbutton(text: "Invoice & Payments", onPressed: () {
               Get.toNamed(Appnames.invoicePayments);
            }),
            16.vspace,
            CustomTextbutton(text: "Report & Analytics", onPressed: () {
              Get.toNamed(Appnames.reportAnalyticsTabs);
            }),
            16.vspace,
            CustomTextbutton(text: "Help & Support", onPressed: () {
              Get.toNamed(Appnames.helpSupport);
            }),
            16.vspace,
            CustomTextbutton(text: "Subscription", onPressed: () {
               Get.toNamed(Appnames.subscribeNow);
            }),
            16.vspace,
            CustomTextbutton(text: "Settings", onPressed: () {
                Get.toNamed(Appnames.settings);
            }),
          ],
        ),
      ),
    );
  }
}
