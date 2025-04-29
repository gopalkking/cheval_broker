import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/common_details_container.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_search_textfield.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DriverListFullView extends StatefulWidget {
  const DriverListFullView({super.key});

  @override
  State<DriverListFullView> createState() => _DriverListFullViewState();
}

class _DriverListFullViewState extends State<DriverListFullView> {
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
            ?CustomSearchTextfield(textEditingController: searchController): Text("Driver Name",  style: theme.textTheme.headlineSmall) , actions: [
           CustomIconButton(icon:_isSearching ? Icons.close : Icons.search,onPressed: (){
             setState(() {
                _isSearching = !_isSearching;
                if (!_isSearching) {
                  searchController.clear();
                }
              });
           },),
        ],
         titletext: "Driver Name",
          leadingOnPressed: (){   Get.back();},
        ),
        body: SingleChildScrollView(
          padding:  const EdgeInsets.all(14.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black),
                child: Column(
                  children: [
                    16.vspace,
                    const CommonDetailsContainer(
                        title: "Driver Details",
                        data: {
                          'Driver Name: ': 'Gopala Krishnan S',
                          'Phone Number: ': '+91 9123456789',
                           'Experience: ': '2 Years',
                            'Rating: ': '3.5',
                        },
                        isDriverInfo: true),
                    16.vspace,
                    const CommonDetailsContainer(
                        title: "Address",
                        data: {
                          'Street: ': 'Name',
                          'Landmark: ': 'Name',
                          'City: ': 'Name',
                          'State: ': 'Name',
                          'Country: ': 'Name',
                          'Pincode: ': 'Name',
                        },
                        isDriverInfo: false),
                    16.vspace,
                    const CommonDetailsContainer(
                        title: "Trip Details",
                        data: {
                          'Total Trips Completed: ': 'Name',
                          'Distance Covered: ': 'Distance',
                        },
                        isDriverInfo: false),
                    16.vspace,
                    const CommonDetailsContainer(
                        title: "Earnings (Per Trip & Total)",
                        data: {
                          'Per Trip: ': '₹455 per Km',
                          'Totally Earned: ': '₹45500',
                        },
                        isDriverInfo: false),
                    16.vspace,
                    const CommonDetailsContainer(
                        title: "On Time Trips",
                        data: {
                          'Number': '',
                        },
                        isDriverInfo: true),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
