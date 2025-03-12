import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:cheval_broker/src/Views/Widgets/textformfield.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppbarWidget(
          title: Image.asset(
            Appimage.logo,
            height: 140,
            width: 140,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.notifications_none_outlined,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.settings_outlined,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            )
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
                      countContainer(
                          Appimage.totalBookings, "12", "Total Booking"),
                      8.vspace,
                      countContainer(Appimage.completedEnquiries, "05",
                          "Completed Enquiries"),
                      8.vspace,
                      countContainer(Appimage.totalDrivers, "05", "Total Drivers")
                    ],
                  ),
                  Column(
                    children: [
                      countContainer(
                          Appimage.newEnquiries, "45", "New Enquiries"),
                      8.vspace,
                      countContainer(
                          Appimage.activeEnquiries, "05", "Active \nEnquiries"),
                      8.vspace,
                      countContainer(
                          Appimage.totalVechicle, "05", "Total Vechicle")
                    ],
                  )
                ],
              ),
              16.vspace,
              Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.black),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Daily Availability",style: theme.textTheme.bodyLarge,),
                    TextButton(onPressed: (){}, child: Text("View all",style: theme.textTheme.bodyMedium!.copyWith(decoration: TextDecoration.underline,decorationColor: Colors.white),)),

                  ],
                ),
//  ListView.builder(
//                       shrinkWrap: true,
//                       physics: NeverScrollableScrollPhysics(),
//                       itemBuilder: (context,index){return Container(
//                         padding: const EdgeInsets.all(16),
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(8), color: theme.scaffoldBackgroundColor),
//                         child: Column(
//                         children: [
//                                    Text("#24637",style: theme.textTheme.headlineSmall,)
//                         ],
//                                       ),
//                       );})
              ],
            ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget countContainer(
    String image,
    String countvalue,
    String containername,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.3,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.black),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [                                    
              Image.asset(image),
              Text(
                countvalue,
                style: Theme.of(context).textTheme.headlineSmall,
              )
            ],
          ),
          8.vspace,
          Text(
            containername,
            style: Theme.of(context).textTheme.bodyLarge,
          )
        ],
      ),
    );
  }
}
