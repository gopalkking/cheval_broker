import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_textbutton.dart';
import 'package:cheval_broker/src/Views/Widgets/dialog_widget.dart';
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
            CustomTextbutton(text: "Edit Profile", onPressed: () {
               Get.toNamed(Appnames.editProfile);
            }),
            16.vspace,
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
             
            }),
            16.vspace,
            CustomTextbutton(text: "Subscription", onPressed: () {
               Get.toNamed(Appnames.subscribeNow);
            }),
            16.vspace,
            CustomTextbutton(text: "Settings", onPressed: () {
                Get.toNamed(Appnames.settings);
            }),
             16.vspace,
            CustomTextbutton(text: "Delete Account", onPressed: () {
                 alertBoxDeleteAccount(context);
            }),
             16.vspace,
            CustomTextbutton(text: "Logout", onPressed: () {
              alertBoxLogout(context);
            }),
          ],
        ),
      ),
    );
    
    
  }
  
  alertBoxDeleteAccount(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return MyDialogWidget(
            text1: 'Are you Sure Delete Account?',
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
  
  
  alertBoxLogout(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return MyDialogWidget(
            text1: 'Logout',
            text2: ' "Are you sure you want to log out of your account?"',
            buttontext: 'Logout',
            canceltext: 'Cancel',
            buttoncolor: Theme.of(context).splashColor,
            onPressed: () {
              Get.toNamed(Appnames.login);
            },
            cancelButton: () {
              Navigator.pop(context);
            },
            imagetext: Appimage.logout,
          );
        });
  }
  
  
}
