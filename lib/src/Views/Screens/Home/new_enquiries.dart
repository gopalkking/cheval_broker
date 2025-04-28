import 'package:cheval_broker/src/Views/Widgets/Booking_widgets/bidnow_dialog.dart';
import 'package:cheval_broker/src/Views/Widgets/Custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_search_textfield.dart';
import 'package:cheval_broker/src/Views/Widgets/home_widgets/home_container_second_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/popup_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewEnquiries extends StatefulWidget {
  const NewEnquiries({super.key});

  @override
  State<NewEnquiries> createState() => _NewEnquiriesState();
}

class _NewEnquiriesState extends State<NewEnquiries> {
  TextEditingController searchController = TextEditingController();
  bool _isSearching = false;
  String searchTerm = '';
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
            ?CustomSearchTextfield(textEditingController: searchController): Text("New Enquiries",  style: theme.textTheme.headlineSmall) , actions: [
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
        }, ),
                body:  SingleChildScrollView(
        child: Padding(
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
                    ListView.builder(
                      itemCount: 8,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.all(0),
                      itemBuilder: (context,index) {
                        return HomeContainer2(
                          theme: theme,
                          id: "#24637",
                          bookingComapny: "SwiftLogix",
                          location: "Coimbatore",
                          widget: ButtonWidget(
                                text: "Bid Now",
                                width: MediaQuery.of(context).size.width / 3.9,
                                height: 35,
                                color: Colors.lightGreen.shade200,
                                onPressed: () {
                                  showBidNowDialog(context);
                                },
                                textcolor: Colors.green,
                                textsize: 16,
                              ),
                        );
                      }
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}