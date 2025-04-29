import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Screens/Booking/pdf_service.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/common_details_container.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_dropdown.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_outline_button.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_search_textfield.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingFullView extends StatefulWidget {
  const BookingFullView({super.key});

  @override
  State<BookingFullView> createState() => _BookingFullViewState();
}

class _BookingFullViewState extends State<BookingFullView> {
  final items = ['Generate', 'View', 'Download'];
  final lr = ['View', 'Download'];
  String? selectedLR;
  String? selectedChallan;
  TextEditingController searchController = TextEditingController();
  bool _isSearching = false;
  String searchTerm = '';

  final PdfService pdfService = PdfService();
  
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 3.9,
                            height: 55,
                            child: CustomDropdown(
                                labeltext: 'challan',
                                value: selectedChallan,
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedChallan = newValue;
                                  });
                                },
                                items: items)),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 4.5,
                            height: 55,
                            child: CustomDropdown(
                                labeltext: 'LR',
                                value: selectedLR,
                                onChanged: (newValue) {
                                  setState(() async {
                                    selectedLR = newValue;
                                    if (selectedLR == 'View') {
                                      Get.toNamed(Appnames.consignmentScreen);
                                    } else if (selectedLR =='Download') {
                                           final data = await pdfService.generateConsignmentNotePDF();
                                          pdfService.savepdfFile("cheval", data);
                                    }
                                  });
                                },
                                items: lr)),
                        CustomOutlineButton(
                          text: "Goods Bills",
                          width: MediaQuery.of(context).size.width / 3.5,
                          height: 55,
                          color: theme.splashColor,
                          textcolor: theme.splashColor,
                          onPressed: () {
                          
                                      // final data = await pdfService.generateConsignmentNotePDF();
                                      // pdfService.savepdfFile("cheval", data);
                          },
                        )
                      ],
                    ),
                    16.vspace,
                    const CommonDetailsContainer(
                        title: "Enquiry Details",
                        data: {
                          'Enquiry Date: ': '11 feb 2025',
                          'Enquiry No: ': '#236356',
                        },
                        isDriverInfo: false),
                    16.vspace,
                    const CommonDetailsContainer(
                        title: "Booking Company Details",
                        data: {
                          'Company Name: ': 'SwiftLogix',
                          'Shipping Date: ': '11 feb 2025',
                        },
                        isDriverInfo: false),
                    16.vspace,
                    const CommonDetailsContainer(
                        title: "Packaging Details",
                        data: {
                          'No of package: ': '2',
                          'Package weight: ': '40kg/Per Box',
                          'Packaging Type: ': 'Box Packaging',
                          'Goods Type: ':
                              'Electronics & Appliances \n(Mobile Phones, Laptops,\n TVs)',
                        },
                        isDriverInfo: false),
                    16.vspace,
                    const CommonDetailsContainer(
                        title: "Customer Details",
                        data: {
                          'Name: ': 'Gopala Krishnan S',
                          'Phone No: ': '+91 9123456789',
                        },
                        isDriverInfo: false),
                    16.vspace,
                    const CommonDetailsContainer(
                        title: "From Location",
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
                        title: "To Location",
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
                        title: "Vechicle Details",
                        data: {
                          'Vechicle Type: ': 'Truck',
                          'Vechicle Model: ': '#236256',
                          'Vechicle Owner: ': 'Name',
                          'Owner Phone: ': '8989834567',
                          'Vechicle No: ': 'Number',
                          'RC Number: ': 'Number',
                          'Insurance: ': 'Number',
                          'Permit: ': 'Number',
                        },
                        isDriverInfo: false),
                    16.vspace,
                    const CommonDetailsContainer(
                        title: "Driver Details",
                        data: {
                          'Driver Name: ': 'Gopala Krishnan S',
                          'Phone Number: ': '9898989898',
                          'License: ': 'Active',
                          'Rating: ': '3.5',
                          'Street: ': 'Name',
                          'Landmark: ': 'Name',
                          'City: ': 'Name',
                          'State: ': 'Name',
                          'Country: ': 'Name',
                          'Pincode: ': 'Name',
                        },
                        isDriverInfo: true),
                    16.vspace,
                    const CommonDetailsContainer(
                        title: "Payment Details",
                        data: {
                          'Advance Payment: ': '₹3647',
                          'Balance Payment: ': '₹3647',
                          'Total Payment: ': '₹3647',
                        },
                        isDriverInfo: true),
                    16.vspace,
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Description",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          16.vspace,
                          Text(
                            "The Vehicle Detailed Description section provides a comprehensive overview of each vehicle's key details, ensuring efficient management and tracking. The Vehicle Overview section displays fundamental details such as type, model, and registration number, while the Vehicle Identification section includes the RC number, license plate, and owner details. To monitor real-time usage, the Current Status highlights whether the vehicle is available, on trip, or under ",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
