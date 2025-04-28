import 'package:cheval_broker/src/Model/mothly_booking.dart';
import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/Booking_widgets/bidnow_dialog.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/home_widgets/count_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/home_widgets/home_container_second_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/home_widgets/home_container_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/home_widgets/quick_link_container_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/popup_widget.dart';
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
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
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
            Text(
              "Quick Links",
              style: theme.textTheme.headlineSmall!.copyWith(fontSize: 22),
            ),
            8.vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    QuickLinkContainerWidget(
                        onPressed: () {
                          Get.toNamed(Appnames.dailyAvailability);
                        },
                        image: Appimage.dailyAvailability,
                        containername: "Daily \nAvailability"),
                    8.vspace,
                    QuickLinkContainerWidget(
                        onPressed: () {
                          Get.toNamed(Appnames.reportAnalyticsTabs);
                        },
                        image: Appimage.reportAnalytics,
                        containername: "Reports \n& Analytics"),
                  ],
                ),
                Column(
                  children: [
                    QuickLinkContainerWidget(
                        onPressed: () {
                          Get.toNamed(Appnames.invoicePayments);
                        },
                        image: Appimage.invoicePayments,
                        containername: "Invoice \n& Payments"),
                    8.vspace,
                    QuickLinkContainerWidget(
                        onPressed: () {
                          Get.toNamed(Appnames.recentBookings);
                        },
                        image: Appimage.recentBookings,
                        containername: "Recent \nBookings"),
                  ],
                )
              ],
            ),
            8.vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Get.toNamed(Appnames.bookingView);
                      },
                      child: CountWidget(
                          context: context,
                          image: Appimage.totalBookings,
                          countvalue: "05",
                          containername: "Total \nBookings"),
                    )
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Get.toNamed(Appnames.bookingView);
                      },
                      child: CountWidget(
                          context: context,
                          image: Appimage.completedEnquiries,
                          countvalue: "45",
                          containername: "Completed Enquiries"),
                    )
                  ],
                )
              ],
            ),
            16.vspace,
            HomeContainerWidget(
                context: context,
                label: "New Enquiries",
                onPressed: () {
                  Get.toNamed(Appnames.newEnquiries);
                },
                widgetcontainer: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Date:",
                          style: theme.textTheme.bodyLarge,
                        ),
                        Text(
                          "24.05.2025",
                          style: theme.textTheme.bodyLarge!
                              .copyWith(color: theme.splashColor),
                        ),
                        8.hspace,
                        Text(
                          "Time:",
                          style: theme.textTheme.bodyLarge,
                        ),
                        Text(
                          "12:23pm",
                          style: theme.textTheme.bodyLarge!
                              .copyWith(color: theme.splashColor),
                        ),
                      ],
                    ),
                    8.vspace,
                    ListView.builder(
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
                              ));
                        }),
                  ],
                )),
            16.vspace,
            Container(
              height: MediaQuery.of(context).size.height / 2.0,
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(color: Colors.black),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shipment Status",
                        style: theme.textTheme.bodyLarge,
                      ),
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
                  SfCartesianChart(
                    plotAreaBorderWidth: 0,
                    primaryXAxis: const CategoryAxis(
                      majorGridLines: MajorGridLines(width: 0),
                      axisLine: AxisLine(color: Colors.white),
                      isVisible: true,
                      labelStyle: TextStyle(color: Colors.transparent),
                      majorTickLines: MajorTickLines(size: 0),
                    ),
                    primaryYAxis: const NumericAxis(
                      isVisible: true,
                      axisLine: AxisLine(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.transparent),
                      majorTickLines: MajorTickLines(size: 0),
                      majorGridLines: MajorGridLines(width: 0),
                    ),
                    series: <CartesianSeries>[
                      ColumnSeries<ShipmentStatus, String>(
                          dataSource: bookingData,
                          xValueMapper: (ShipmentStatus data, _) => data.name,
                          yValueMapper: (ShipmentStatus data, _) => data.value,
                          pointColorMapper: (ShipmentStatus data, _) =>
                              data.color,
                          width: 0.6,
                          spacing: 0.1,
                          color: Colors.green,
                          dataLabelSettings: const DataLabelSettings(
                            isVisible: true, // Show value on top
                            labelAlignment: ChartDataLabelAlignment.top,
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: bookingData.map((item) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          children: [
                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color: item.color,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              item.name,
                              style:  theme.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
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
    );
  }

  List<ShipmentStatus> bookingData = [
    ShipmentStatus(name: "Delayed", value: 15, color: Colors.red),
    ShipmentStatus(name: "In progress", value: 20, color: Colors.yellow),
    ShipmentStatus(name: "Delivered", value: 25, color: Colors.green)
  ];
}
