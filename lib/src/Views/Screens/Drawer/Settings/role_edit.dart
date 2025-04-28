import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Widgets/Settings_widgets/setting_checkbox_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/Settings_widgets/setting_row_name_textfield_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/common_checkbox.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_outline_button.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoleEdit extends StatefulWidget {
  const RoleEdit({super.key});

  @override
  State<RoleEdit> createState() => _RoleEditState();
}

class _RoleEditState extends State<RoleEdit> {
  TextEditingController name = TextEditingController();
  bool isCheckedDashboard = true;
  bool isCheckedBookingEnquiries = false;
  bool isCheckedBooking = false;
  bool isCheckedDailyAvailability = false;
  bool isCheckedVehicleManagement = false;
  bool isCheckedDriverManagement = false;
  bool isCheckedInvoicePayments = false;
  bool isCheckedReportAnalytics = false;
  bool isCheckedHelpSupport = false;
  bool isCheckedSubscription = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        titletext: "Role Edit",
        leadingOnPressed: () {
          Get.back();
        },
        actions: const [
          CustomIconButton(icon: Icons.search),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              // SettingRowNameTextfieldWidget(textEditingController: name, text: "Name",hinttext: "Name",),
              // 8.vspace,
              // SettingRowNameTextfieldWidget(textEditingController: name, text: "Designation",hinttext: "Super Admin",),
              // 8.vspace,
              // SettingRowNameTextfieldWidget(textEditingController: name, text: "Phone Number", hinttext: "Super Admin"),
              // 8.vspace,
              // SettingRowNameTextfieldWidget(textEditingController: name, text: "Email", hinttext: "Super Admin"),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black),
                child: Column(
                  children: [
                    SettingCheckboxWidget(
                        widget: CommonCheckbox(
                            value: isCheckedDashboard,
                            onChanged: (newbool) {
                              setState(() {
                                isCheckedDashboard = true;
                              });
                            }),
                        text: "Dashboard"),
                        SizedBox(
                          width: 250,
                          child: Column(
                            children: [
                                              SettingCheckboxWidget(
                          widget: CommonCheckbox(
                              value: isCheckedBookingEnquiries,
                              onChanged: (newbool) {
                                setState(() {
                                  isCheckedBookingEnquiries = newbool!;
                                });
                              }),
                          text: "All"),
                                              2.vspace,
                                              SettingCheckboxWidget(
                          widget: CommonCheckbox(
                              value: isCheckedBooking,
                              onChanged: (newbool) {
                                setState(() {
                                  isCheckedBooking = newbool!;
                                });
                              }),
                          text: "View"),
                                              2.vspace,
                                              SettingCheckboxWidget(
                          widget: CommonCheckbox(
                              value: isCheckedDailyAvailability,
                              onChanged: (newbool) {
                                setState(() {
                                  isCheckedDailyAvailability = newbool!;
                                });
                              }),
                          text: "Create"),
                                              2.vspace,
                                              SettingCheckboxWidget(
                          widget: CommonCheckbox(
                              value: isCheckedVehicleManagement,
                              onChanged: (newbool) {
                                setState(() {
                                  isCheckedVehicleManagement = newbool!;
                                });
                              }),
                          text: "Edit"),
                                              2.vspace,
                                              SettingCheckboxWidget(
                          widget: CommonCheckbox(
                              value: isCheckedDriverManagement,
                              onChanged: (newbool) {
                                setState(() {
                                  isCheckedDriverManagement = newbool!;
                                });
                              }),
                          text: "Delete"),
                                              2.vspace,
                                              SettingCheckboxWidget(
                          widget: CommonCheckbox(
                              value: isCheckedInvoicePayments,
                              onChanged: (newbool) {
                                setState(() {
                                  isCheckedInvoicePayments = true;
                                });
                              }),
                          text: "Download"),
                            ],
                          ),
                        ),
                    2.vspace,
                    SettingCheckboxWidget(
                        widget: CommonCheckbox(
                            value: isCheckedBookingEnquiries,
                            onChanged: (newbool) {
                              setState(() {
                                isCheckedBookingEnquiries = newbool!;
                              });
                            }),
                        text: "Booking Enquiries"),
                    2.vspace,
                    SettingCheckboxWidget(
                        widget: CommonCheckbox(
                            value: isCheckedBooking,
                            onChanged: (newbool) {
                              setState(() {
                                isCheckedBooking = newbool!;
                              });
                            }),
                        text: "Booking"),
                    2.vspace,
                    SettingCheckboxWidget(
                        widget: CommonCheckbox(
                            value: isCheckedDailyAvailability,
                            onChanged: (newbool) {
                              setState(() {
                                isCheckedDailyAvailability = newbool!;
                              });
                            }),
                        text: "Daily Availability"),
                    2.vspace,
                    SettingCheckboxWidget(
                        widget: CommonCheckbox(
                            value: isCheckedVehicleManagement,
                            onChanged: (newbool) {
                              setState(() {
                                isCheckedVehicleManagement = newbool!;
                              });
                            }),
                        text: "Vechicle Management"),
                    2.vspace,
                    SettingCheckboxWidget(
                        widget: CommonCheckbox(
                            value: isCheckedDriverManagement,
                            onChanged: (newbool) {
                              setState(() {
                                isCheckedDriverManagement = newbool!;
                              });
                            }),
                        text: "Driver Management"),
                    2.vspace,
                    SettingCheckboxWidget(
                        widget: CommonCheckbox(
                            value: isCheckedInvoicePayments,
                            onChanged: (newbool) {
                              setState(() {
                                isCheckedInvoicePayments = true;
                              });
                            }),
                        text: "Invoice & Payments"),
                    2.vspace,
                    SettingCheckboxWidget(
                        widget: CommonCheckbox(
                            value: isCheckedReportAnalytics,
                            onChanged: (newbool) {
                              setState(() {
                                isCheckedReportAnalytics = true;
                              });
                            }),
                        text: "Report & Analytics"),
                    2.vspace,
                    SettingCheckboxWidget(
                        widget: CommonCheckbox(
                            value: isCheckedHelpSupport,
                            onChanged: (newbool) {
                              setState(() {
                                isCheckedHelpSupport = newbool!;
                              });
                            }),
                        text: "Help & Support"),
                    2.vspace,
                    SettingCheckboxWidget(
                        widget: CommonCheckbox(
                            value: isCheckedSubscription,
                            onChanged: (newbool) {
                              setState(() {
                                isCheckedSubscription = newbool!;
                              });
                            }),
                        text: "Subscription"),
                    2.vspace,
                   
                  ],
                ),
              ),
              8.vspace,
               Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomOutlineButton(text: "Cancel", width: MediaQuery.of(context).size.width/2.4, height: 45, color: Theme.of(context).splashColor,onPressed: (){
                Navigator.pop(context);
              },textcolor: Theme.of(context).splashColor,),
              26.hspace,
              ButtonWidget(text: "Save", width: MediaQuery.of(context).size.width/2.4, height: 45, color: Theme.of(context).splashColor,textcolor: Colors.black,onPressed:(){},textsize: 18,)
            ],
          ),
            ],
          ),
        ),
      ),
    );
  }
}
