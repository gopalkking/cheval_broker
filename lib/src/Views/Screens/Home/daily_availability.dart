import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/Custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/common_answer_text.dart';
import 'package:cheval_broker/src/Views/Widgets/common_question_text.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_search_textfield.dart';
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
  TextEditingController preferredDistrict2 = TextEditingController();
  TextEditingController preferredDistrict3 = TextEditingController();
  TextEditingController preferredDistrict4 = TextEditingController();
  TextEditingController preferredDistrict5= TextEditingController();
  TextEditingController preferredState = TextEditingController();
  TextEditingController searchController = TextEditingController();
  bool _isSearching = false;
  String searchTerm = '';

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
                    preferredDistrict2: preferredDistrict2,
                    preferredDistrict3: preferredDistrict3,
                    preferredDistrict4: preferredDistrict4,
                    preferredDistrict5: preferredDistrict5,
                    saveonPressed: () {},
                  ),);
      },
    );
  }

   @override
  void initState() {
    super.initState();
    searchController.addListener(() {
      setState(() {
        searchTerm = searchController.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppbarWidget(
        titleWidgetbool: true,
       titlewidget: _isSearching
            ?CustomSearchTextfield(textEditingController: searchController): Text("Daily Availability",  style: theme.textTheme.headlineSmall),
        actions: [
          CustomIconButton(
            icon: _isSearching ? Icons.close : Icons.search,
            onPressed: () {
               setState(() {
                _isSearching = !_isSearching;
                if (!_isSearching) {
                  searchController.clear();
                }
              });
            },
          ),
        ],
       leadingOnPressed: (){   Get.back();},
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
                        textsize: 20,
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
                                      const CommonQuestionText(text: "Vechicle Type"),
                                      8.vspace,
                                      const CommonQuestionText(text: "Location Pincode"),
                                      8.vspace,
                                      const CommonQuestionText(text: "Preferred State"),
                                      8.vspace,
                                      const CommonQuestionText(text: "Preferred District"),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      36.vspace,
                                      const CommonAnswerText(text: "Truck"),
                                      8.vspace,
                                      const CommonAnswerText(text: "632008"),
                                      8.vspace,
                                      const CommonAnswerText(text: "Tamilnadu"),
                                      8.vspace,
                                      const CommonAnswerText(text: "Madurai \nCoimbatore"),
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
