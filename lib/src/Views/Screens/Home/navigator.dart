import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Screens/Drawer/drawer_screen.dart';
import 'package:cheval_broker/src/Views/Screens/Home/home_screen.dart';
import 'package:cheval_broker/src/Views/Screens/Booking/booking_screen.dart';
import 'package:cheval_broker/src/Views/Screens/Driver%20List/driver_list.dart';
import 'package:cheval_broker/src/Views/Screens/Vechicle%20List/vechicle_list.dart';
import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class NavigatorScreen extends StatefulWidget {
  int index;
  NavigatorScreen({super.key, required this.index});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget containershadow(Color color,Widget widget) {
    return Container(
      width: 95,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
      child: widget,
    );
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      color: Appcolors.appColors.shade50,
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.transparent,
           appBar: 
           widget.index == 0 
           ?AppbarWidget(
          titleLogo: true,
          titletext: "",
          leadingMenuButton: true,
          leadingOnPressed: (){
            _scaffoldKey.currentState?.openDrawer();
          },
          actions: [
            CustomIconButton(icon:  Icons.notifications_none_outlined,onPressed: (){
              Get.toNamed(Appnames.notification);
            },),
            CustomIconButton(icon:  Icons.settings_outlined,onPressed: (){
                Get.toNamed(Appnames.settings);
            },),
          ],
          centerTitile: true): widget.index == 1
                        ?AppbarWidget(
      titletext: "Booking",
      leadingMenuButton: true,
       leadingOnPressed: (){
         _scaffoldKey.currentState?.openDrawer();
       },
      ):widget.index == 2
                            ? AppbarWidget(
                            titletext: "Vehicle List",
                            leadingMenuButton: true,
                            leadingOnPressed: (){ _scaffoldKey.currentState?.openDrawer();},):widget.index == 3
                                ? AppbarWidget(
           titletext: "Driver List",
           leadingMenuButton: true,
           leadingOnPressed: (){
             _scaffoldKey.currentState?.openDrawer();
           },
      ):null,
      // AppbarWidget(
      //     title: Image.asset(
      //       Appimage.logo,
      //       height: 140,
      //       width: 140,
      //     ),
      //     leadindButton:  CustomIconButton(icon:Icons.menu_sharp,onPressed: (){
      //        _scaffoldKey.currentState?.openDrawer();
      //     },),
      //     actions: [
      //       CustomIconButton(icon:  Icons.notifications_none_outlined,onPressed: (){},),
      //       CustomIconButton(icon:  Icons.settings_outlined,onPressed: (){},),
      //     ],
      //     centerTitile: true),
          drawer: const DrawerScreen(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: widget.index == 0
                    ? const HomeScreen()
                    : widget.index == 1
                        ? const BookingScreen()
                        : widget.index == 2
                            ? const VechicleList()
                            : widget.index == 3
                                ? const DriverList()
                                : const HomeScreen()),
            8.vspace,
            Container(
              color: theme.splashColor,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          widget.index = 0;
                        });
                      },
                      child: containershadow(
                         widget.index == 0
                              ? theme.hintColor
                              : theme.splashColor,Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              Appimage.dashboard,
                              color: widget.index == 0
                                  ? Colors.white
                                  : Colors.black,
                              height: 45,
                              width: 45,
                            ),
                            Text(
                              'Dashboard',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      color: widget.index == 0
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          widget.index = 1;
                        });
                      },
                      child: containershadow(
                        widget.index == 1
                              ? theme.hintColor
                              : theme.splashColor, Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              Appimage.booking,
                              color: widget.index == 1
                                  ? Colors.white
                                  : Colors.black,
                              height: 45,
                              width: 45,
                            ),
                            Text(
                              'Booking',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      color: widget.index == 1
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          widget.index = 2;
                        });
                      },
                      child: containershadow(
                         widget.index == 2
                                ? theme.hintColor
                                : theme.splashColor, Column(
                          children: [
                            Image.asset(
                              Appimage.vechicleList,
                              color: widget.index == 2
                                  ? Colors.white
                                  : Colors.black,
                              height: 45,
                              width: 45,
                            ),
                            Text(
                              'Vechicle List',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      color: widget.index == 2
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          widget.index = 3;
                        });
                      },
                      child: containershadow(
                         widget.index == 3
                                ? theme.hintColor
                                : theme.splashColor,Column(
                          children: [
                            Image.asset(
                              Appimage.driverList,
                              color: widget.index == 3
                                  ? Colors.white
                                  : Colors.black,
                              height: 45,
                              width: 45,
                            ),
                            Text(
                              'Driver List',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      color: widget.index == 3
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
