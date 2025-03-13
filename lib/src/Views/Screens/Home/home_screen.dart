import 'package:cheval_broker/src/Model/mothly_booking.dart';
import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/Custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/count_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/home_container_second_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/home_container_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:cheval_broker/src/Views/Widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController search = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
      double chartWidth = bookingData.length * 50.0; 
    return Scaffold(
      appBar: AppbarWidget(
          title: Image.asset(
            Appimage.logo,
            height: 140,
            width: 140,
          ),
          leadindButton: const CustomIconButton(icon:Icons.menu_sharp),
          actions: [
            // IconButton(
            //   onPressed: () {},
            //   icon: const CircleAvatar(
            //     backgroundColor: Colors.black,
            //     child: Icon(
            //       Icons.notifications_none_outlined,
            //       size: 25,
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
            CustomIconButton(icon:  Icons.notifications_none_outlined,onPressed: (){},),
            CustomIconButton(icon:  Icons.settings_outlined,onPressed: (){},),
          ],
          centerTitile: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width / 1,
                  child: Center(
                      child: Textformfieldwidget(
                    textEditingController: search,
                    borderradius: 24,
                    hinttext: "Search",
                    hintcolor: Colors.white,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ))),
              16.vspace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      CountWidget(
                          context: context,
                          image: Appimage.totalBookings,
                          countvalue: "12",
                          containername: "Total Booking"),
                      8.vspace,
                      CountWidget(
                          context: context,
                          image: Appimage.completedEnquiries,
                          countvalue: "05",
                          containername: "Completed Enquiries"),
                      8.vspace,
                      CountWidget(
                          context: context,
                          image: Appimage.totalDrivers,
                          countvalue: "05",
                          containername: "Total Drivers")
                    ],
                  ),
                  Column(
                    children: [
                      CountWidget(
                          context: context,
                          image: Appimage.newEnquiries,
                          countvalue: "45",
                          containername: "New Enquiries"),
                      8.vspace,
                      CountWidget(
                          context: context,
                          image: Appimage.activeEnquiries,
                          countvalue: "05",
                          containername: "Active \nEnquiries"),
                      8.vspace,
                      CountWidget(
                          context: context,
                          image: Appimage.totalVechicle,
                          countvalue: "05",
                          containername: "Total Vechicle")
                    ],
                  )
                ],
              ),
              16.vspace,
              HomeContainerWidget(
                  context: context,
                  label: "Daily Availability",
                  onPressed: () {
                    Get.toNamed(Appnames.dailyAvailability);
                  },
                  widgetcontainer: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 2,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(0),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(6),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: theme.scaffoldBackgroundColor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "#24637",
                                    style: theme.textTheme.headlineSmall!
                                        .copyWith(fontSize: 22),
                                  ),
                                  8.vspace,
                                  Text(
                                    "Vechicle Type       Truck",
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              )
                            ],
                          ),
                        );
                      })),
              16.vspace,
              Container(
                height: MediaQuery.of(context).size.height/2.2,
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(color: Colors.black),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Monthly bookings",style: theme.textTheme.bodyLarge,),
                        IconButton(
                          onPressed: () {},
                          icon: CircleAvatar(
                            backgroundColor: theme.scaffoldBackgroundColor,
                            child: const Icon(
                              Icons.filter_alt_rounded,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(
                        width: chartWidth,
                        child: SfCartesianChart(
                          plotAreaBorderWidth: 0,
                          
                          primaryXAxis: const CategoryAxis(
                            labelStyle: TextStyle(
                              color: Colors.red,
                            ),
                            majorGridLines: MajorGridLines(width: 0),
                          ),
                          primaryYAxis: const NumericAxis(
                            isVisible: false,
                          ),
                          series: <CartesianSeries>[
                            StackedColumn100Series<MonthlyBooking, String>(
                                dataSource: bookingData,
                                xValueMapper: (MonthlyBooking data, _) =>
                                    data.day.toString(),
                                yValueMapper: (MonthlyBooking data, _) =>
                                    data.completed,
                                width: 0.5,
                                color: Colors.green,
                                dataLabelSettings: const DataLabelSettings(
                                  isVisible: true, // Show value on top
                                  labelAlignment: ChartDataLabelAlignment.top,
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            StackedColumn100Series<MonthlyBooking, String>(
                                dataSource: bookingData,
                                xValueMapper: (MonthlyBooking data, _) =>
                                    data.day.toString(),
                                yValueMapper: (MonthlyBooking data, _) =>
                                    data.pending,
                                color: Colors.orange,
                                width: 0.5,
                                dataLabelSettings: const DataLabelSettings(
                                  isVisible: true, // Show value on top
                                  labelAlignment: ChartDataLabelAlignment.top,
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            StackedColumn100Series<MonthlyBooking, String>(
                                dataSource: bookingData,
                                xValueMapper: (MonthlyBooking data, _) =>
                                    data.day.toString(),
                                yValueMapper: (MonthlyBooking data, _) =>
                                    data.cancelled,
                                color: Colors.red,
                                width: 0.5,
                                dataLabelSettings: const DataLabelSettings(
                                  isVisible: true,
                                  labelAlignment: ChartDataLabelAlignment.top,
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              16.vspace,
              HomeContainerWidget(
                  context: context,
                  label: "New Enquiries",
                  onPressed: () {
                         Get.toNamed(Appnames.newEnquiries);
                  },
                  widgetcontainer: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 2,
                      physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.all(0),
                      itemBuilder: (context, index) {
                        return HomeContainer2(
                          theme: theme,
                          id: "#24637",
                          bookingComapny: "SwiftLogix",
                          location: "Coimbatore",
                        );
                      })),
              16.vspace,
              HomeContainerWidget(
                  context: context,
                  label: "Recent Bookings",
                  onPressed: () {
                         Get.toNamed(Appnames.recentBookings);
                  },
                  widgetcontainer: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 2,
                      physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.all(0),
                      itemBuilder: (context, index) {
                        return HomeContainer2(
                          theme: theme,
                          id: "#24637",
                          bookingComapny: "SwiftLogix",
                          location: "Coimbatore",
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }

  List<MonthlyBooking> bookingData = [
     MonthlyBooking(day: 14, completed: 50, pending: 10, cancelled: 20),
    MonthlyBooking(day: 15, completed: 45, pending: 15, cancelled: 5),
    MonthlyBooking(day: 16, completed: 40, pending: 20, cancelled: 10),
    MonthlyBooking(day: 17, completed: 30, pending: 25, cancelled: 15),
    MonthlyBooking(day: 18, completed: 50, pending: 10, cancelled: 20),
    MonthlyBooking(day: 19, completed: 45, pending: 15, cancelled: 5),
    MonthlyBooking(day: 20, completed: 40, pending: 20, cancelled: 10),
    MonthlyBooking(day: 21, completed: 30, pending: 25, cancelled: 15),
    MonthlyBooking(day: 22, completed: 50, pending: 10, cancelled: 20),
    MonthlyBooking(day: 23, completed: 45, pending: 15, cancelled: 5),
    MonthlyBooking(day: 24, completed: 40, pending: 20, cancelled: 10),
    MonthlyBooking(day: 25, completed: 30, pending: 25, cancelled: 15),
    MonthlyBooking(day: 26, completed: 50, pending: 10, cancelled: 20),
    MonthlyBooking(day: 27, completed: 45, pending: 15, cancelled: 5),
    MonthlyBooking(day: 28, completed: 40, pending: 20, cancelled: 10),
    MonthlyBooking(day: 29, completed: 30, pending: 25, cancelled: 15),
    MonthlyBooking(day: 30, completed: 50, pending: 10, cancelled: 20),
    MonthlyBooking(day: 31, completed: 45, pending: 15, cancelled: 5),
    
  ];
}

