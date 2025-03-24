import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/Custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/back_arrow_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/home_widgets/add_edit_custom_dialog.dart';
import 'package:cheval_broker/src/Views/Widgets/dialog_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/popup_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DailyAvailability extends StatefulWidget {
  const DailyAvailability({super.key});

  @override
  State<DailyAvailability> createState() => _DailyAvailabilityState();
}

class _DailyAvailabilityState extends State<DailyAvailability> {
  TextEditingController vechicelNumber = TextEditingController();
  TextEditingController vechicelType = TextEditingController();
  TextEditingController currentPincode = TextEditingController();
  TextEditingController preferredDistrict = TextEditingController();
  TextEditingController preferredState = TextEditingController();

  void showCustomDialog(BuildContext context, String title) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return PopupWidget(widget:   AddEditCustomDialog(
                    title: title,
                    vechicelType: vechicelType,
                    vechicelNumber: vechicelNumber,
                    currentPincode: currentPincode,
                    preferredState: preferredState,
                    preferredDistrict: preferredDistrict,
                    addDistrictonPressed: () {},
                    saveonPressed: () {},
                  ),);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppbarWidget(
        title: Text(
          "Daily Availability",
          style: theme.textTheme.headlineSmall,
        ),
        actions: [
          CustomIconButton(
            icon: Icons.search,
            onPressed: () {},
          ),
        ],
        leadindButton: BackArrowWidget(
          backgroundColor: Colors.black,
          iconcolor: Colors.white,
          onPressed: () {
            Get.back();
          },
          padingValue: 10,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ButtonWidget(
                        text: '+ Add',
                        textcolor: Colors.black,
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: 55,
                        color: theme.splashColor,
                        onPressed: () {
                          showCustomDialog(context, "Add");
                        },
                      ),
                    ],
                  ),
                  16.vspace,
                  ListView.builder(
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
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "#2986",
                                        style: theme.textTheme.headlineSmall!
                                            .copyWith(fontSize: 22),
                                      ),
                                      8.vspace,
                                      Text(
                                        "Vechicle Type",
                                        style: theme.textTheme.bodyLarge,
                                      ),
                                      8.vspace,
                                      Text(
                                        "Location Pincode",
                                        style: theme.textTheme.bodyLarge,
                                      ),
                                      8.vspace,
                                      Text(
                                        "Preferred State",
                                        style: theme.textTheme.bodyLarge,
                                      ),
                                      8.vspace,
                                      Text(
                                        "Preferred District",
                                        style: theme.textTheme.bodyLarge,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      36.vspace,
                                      Text(
                                        "Truck",
                                        style: theme.textTheme.labelMedium!
                                            .copyWith(
                                                color: Colors.white,
                                                fontSize: 16),
                                      ),
                                      8.vspace,
                                      Text(
                                        "632008",
                                        style: theme.textTheme.labelMedium!
                                            .copyWith(
                                                color: Colors.white,
                                                fontSize: 16),
                                      ),
                                      8.vspace,
                                      Text(
                                        "Tamilnadu",
                                        style: theme.textTheme.labelMedium!
                                            .copyWith(
                                                color: Colors.white,
                                                fontSize: 16),
                                      ),
                                      8.vspace,
                                      Text(
                                        "Madurai \nCoimbatore",
                                        style: theme.textTheme.labelMedium!
                                            .copyWith(
                                                color: Colors.white,
                                                fontSize: 16),
                                      ),
                                    ],
                                  )
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
                                      showCustomDialog(context, "Edit");
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
                                      alertBox();
                                    },
                                  ),
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
