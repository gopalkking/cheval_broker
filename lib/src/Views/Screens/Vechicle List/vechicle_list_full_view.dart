import 'package:cheval_broker/src/Views/Widgets/Custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/common_answer_text.dart';
import 'package:cheval_broker/src/Views/Widgets/common_question_text.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_search_textfield.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VechicleListFullView extends StatefulWidget {
  const VechicleListFullView({super.key});

  @override
  State<VechicleListFullView> createState() => _VechicleListFullViewState();
}

class _VechicleListFullViewState extends State<VechicleListFullView> {
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
            ?CustomSearchTextfield(textEditingController: searchController): Text("#24637",  style: theme.textTheme.headlineSmall) , actions: [
           CustomIconButton(icon:_isSearching ? Icons.close : Icons.search,onPressed: (){
             setState(() {
                _isSearching = !_isSearching;
                if (!_isSearching) {
                  searchController.clear();
                }
              });
           },),
        ],
         leadingOnPressed: (){
          Get.back();
         },
        ),
        body: SingleChildScrollView(
            padding:  const EdgeInsets.all(14.0),
          child: Container(
            padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black),
                    child: Container(
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
                                  const CommonQuestionText(text: "Vechicle Type"),
                                  8.vspace,
                                        const CommonQuestionText(text: "Vechicle Model"),
                                  8.vspace,
                                        const CommonQuestionText(text: "Vechicle Owner"),
                                  8.vspace,
                                        const CommonQuestionText(text: "Owner Phone"),
                                  8.vspace,
                                        const CommonQuestionText(text: "Vechicle No"),
                                  8.vspace,
                                        const CommonQuestionText(text: "RC Number"),
                                  8.vspace,
                                        const CommonQuestionText(text: "Insurance"),
                                  8.vspace,
                                        const CommonQuestionText(text: "Permit"),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const CommonAnswerText(text: "Truck"),
                                  8.vspace,
                                   const CommonAnswerText(text: "#2356"),
                                  8.vspace,
                                   const CommonAnswerText(text: "Name"),
                                  8.vspace,
                                   const CommonAnswerText(text: "9894890950"),
                                  8.vspace,
                                   const CommonAnswerText(text: "Number"),
                                  8.vspace,
                                   const CommonAnswerText(text: "Number"),
                                  8.vspace,
                                   const CommonAnswerText(text: "Number"),
                                  8.vspace,
                                   const CommonAnswerText(text: "Number"),
                                ],
                              ),
                            ],
                          ),
                    ),
          ),
        ),
    );
  }
}