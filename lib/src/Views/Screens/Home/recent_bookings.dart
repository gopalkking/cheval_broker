import 'package:cheval_broker/src/Views/Widgets/Custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/back_arrow_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/home_container_second_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecentBookings extends StatefulWidget {
  const RecentBookings({super.key});

  @override
  State<RecentBookings> createState() => _RecentBookingsState();
}

class _RecentBookingsState extends State<RecentBookings> {
  @override
  Widget build(BuildContext context) {
     ThemeData theme = Theme.of(context);
    return Scaffold(
        appBar: AppbarWidget(title:Text(
          "Recent Bookings",
          style: theme.textTheme.headlineSmall,
        ), actions: [
           CustomIconButton(icon: Icons.search,onPressed: (){},),
        ], leadindButton: BackArrowWidget(backgroundColor: Colors.black,iconcolor: Colors.white,onPressed: (){
          Get.back();
        },padingValue: 10,), ),
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