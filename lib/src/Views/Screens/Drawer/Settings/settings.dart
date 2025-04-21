import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/common_answer_text.dart';
import 'package:cheval_broker/src/Views/Widgets/common_question_text.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_search_textfield.dart';
import 'package:cheval_broker/src/Views/Widgets/dialog_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/filter_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
       appBar: AppbarWidget(
                titleWidgetbool: true,
        titlewidget:_isSearching
            ?CustomSearchTextfield(textEditingController: searchController): Text("Settings",  style: theme.textTheme.headlineSmall) , actions: [
           CustomIconButton(icon:_isSearching ? Icons.close : Icons.search,onPressed: (){
             setState(() {
                _isSearching = !_isSearching;
                if (!_isSearching) {
                  searchController.clear();
                }
              });
           },),
        ],
        leadingOnPressed: () {
          Get.back();
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
                 Row(
                       
                        children: [
                          ButtonWidget(
                            text: '+ Add User',
                            textcolor: Colors.black,
                            width: MediaQuery.of(context).size.width / 3.1,
                            height: 50,
                            textsize: 18,
                            color: theme.splashColor,
                            onPressed: () {
                            Get.toNamed(Appnames.addUser);
                            },
                          ),
                          24.hspace,
                           ButtonWidget(
                            text: 'Roles',
                            textcolor: Colors.white,
                            width: MediaQuery.of(context).size.width / 4,
                            height: 50,
                            textsize: 18,
                            color: Colors.black,
                            onPressed: () {
                             Get.toNamed(Appnames.rolesScreen);
                            },
                          ),
                             SizedBox(width: MediaQuery.of(context).size.width/6.3,),
                            FilterWidget(onPressed: (){})
                        ],
                      ),
                      24.vspace,
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
                             Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Name",
                                    style: theme.textTheme.headlineSmall!
                                        .copyWith(fontSize: 22),
                                  ),
                                        IconButton(onPressed: (){
                                         //  Get.toNamed(Appnames.bookingFullView);
                                        }, icon: const Icon(Icons.arrow_forward_ios,color: Colors.white,)),
                                ],
                              ),
                              8.vspace,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                  const CommonQuestionText(text: "Roles"),
                                  8.vspace,
                                  const CommonQuestionText(
                                      text: "Phone Number"),
                                  8.vspace,
                                  const CommonQuestionText(text: "Email"),
                                  8.vspace,
                                  const CommonQuestionText(text: "Status"),
                                  8.vspace,
                                  const CommonQuestionText(text: "Created By"),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                  const CommonAnswerText(text: "Admin"),
                                  8.vspace,
                                  const CommonAnswerText(text: "00000 00000"),
                                  8.vspace,
                                  const CommonAnswerText(text: "hsdj@gmail.com"),
                                  8.vspace,
                                  const CommonAnswerText(text: "Active"),
                                  8.vspace,
                                  const CommonAnswerText(text: "Super Admin"),
                                  8.vspace,
                                    ],
                                  ),
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
                                width: MediaQuery.of(context).size.width / 3.8,
                                height: 48,
                                color: const Color(Appcolors.lightblue),
                                onPressed: () {
                                  // showCustomDialog(context, "Edit/Driver");
                                },
                              ),
                              26.hspace,
                                  ButtonWidget(
                                text: 'Delete',
                                iconbutton: true,
                                icon: Icons.delete,
                                iconcolor: Colors.red,
                                textcolor: Colors.red,
                                width: MediaQuery.of(context).size.width / 3.8,
                                height: 48,
                                color: const Color(Appcolors.lightred),
                                onPressed: () {
                                  alertBox();
                                },
                              ),
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