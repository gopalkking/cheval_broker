import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Widgets/Custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppbarWidget(
        title: Text(
          "Booking",
          style: theme.textTheme.headlineSmall,
        ),
        leadindButton: CustomIconButton(icon:  Icons.menu_sharp,onPressed: (){},),
        actions: const [
         CustomIconButton(icon:    Icons.search),
        ],
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
                child: Column(
                  children: [
                                     SizedBox(
                                      width: 300,
                                       child: OutlinedButton(onPressed: (){
                                                         
                                                        },  style: OutlinedButton.styleFrom(
                                               foregroundColor: theme.splashColor, 
                                               padding: const EdgeInsets.all(8),
                                               shape: RoundedRectangleBorder(
                                                 borderRadius: BorderRadius.circular(5),
                                               ),
                                               side:  BorderSide(color: theme.splashColor),
                                             ),
                                             child:  Text(
                                               "Add District",  
                                               style: Theme.of(context).textTheme.titleLarge!.copyWith(color: theme.splashColor,fontSize: 20)
                                             ),),
                                     ),
                    16.vspace,
                    ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.all(0),
                      itemBuilder: (context,index) {
                        return Container(
                             margin: const EdgeInsets.all(6),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: theme.scaffoldBackgroundColor),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "#2986",
                                        style: theme.textTheme.headlineSmall!
                                            .copyWith(fontSize: 22),
                                      ),
                                      8.vspace,
                                      Text(
                                        "Vechicle Type",
                                        style: theme.textTheme.bodyLarge,
                                      ),
                                      8.vspace,
                                      Text(
                                        "Location Pincode",
                                        style: theme.textTheme.bodyLarge,
                                      ),
                                      8.vspace,
                                      Text(
                                        "Preferred State",
                                        style: theme.textTheme.bodyLarge,
                                      ),
                                      8.vspace,
                                      Text(
                                        "Preferred District",
                                        style: theme.textTheme.bodyLarge,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      36.vspace,
                                      Text(
                                        "Truck",
                                        style: theme.textTheme.labelMedium!
                                            .copyWith(
                                                color: Colors.white, fontSize: 16),
                                      ),
                                      8.vspace,
                                      Text(
                                        "632008",
                                        style: theme.textTheme.labelMedium!
                                            .copyWith(
                                                color: Colors.white, fontSize: 16),
                                      ),
                                      8.vspace,
                                      Text(
                                        "Tamilnadu",
                                        style: theme.textTheme.labelMedium!
                                            .copyWith(
                                                color: Colors.white, fontSize: 16),
                                      ),
                                      8.vspace,
                                      Text(
                                        "Madurai \nCoimbatore",
                                        style: theme.textTheme.labelMedium!
                                            .copyWith(
                                                color: Colors.white, fontSize: 16),
                                      ),
                                    ],
                                  )
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
                                    width: MediaQuery.of(context).size.width /3.8,
                                    height: 48,
                                    color: const Color(Appcolors.lightblue),
                                    onPressed: () {
                                      // Get.toNamed(Appnames.navigator);
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
                                  // Get.toNamed(Appnames.navigator);
                                },
                              ),
                                ],
                              ),
                                                  
                            ],
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
