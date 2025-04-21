import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/Custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_search_textfield.dart';
import 'package:cheval_broker/src/Views/Widgets/dialog_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingView extends StatefulWidget {
  const BookingView({super.key});

  @override
  State<BookingView> createState() => _BookingViewState();
}

class _BookingViewState extends State<BookingView> {
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
            ?CustomSearchTextfield(textEditingController: searchController): Text("Booking",  style: theme.textTheme.headlineSmall) , actions: [
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
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
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
                                  "#2987",
                                  style: theme.textTheme.headlineSmall!
                                      .copyWith(fontSize: 22),
                                ),
                                      IconButton(onPressed: (){
                                         Get.toNamed(Appnames.bookingFullView);
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
                                    Text(
                                      "Driver",
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                    8.vspace,
                                    Text(
                                      "Shiping Date",
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                    8.vspace,
                                    Text(
                                      "Status",
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
                                      "Name",
                                      style: theme.textTheme.bodyLarge!
                                          .copyWith(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300),
                                    ),
                                    8.vspace,
                                    Text(
                                      "11 feb 2025",
                                      style: theme.textTheme.bodyLarge!
                                          .copyWith(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300),
                                    ),
                                    8.vspace,
                                    Text(
                                      "in transmit",
                                      style: theme.textTheme.bodyLarge!
                                          .copyWith(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300,
                                              color: theme.splashColor),
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
