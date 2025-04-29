import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/Booking_widgets/cosignment_widgets/consignment_common_text.dart';
import 'package:cheval_broker/src/Views/Widgets/Booking_widgets/cosignment_widgets/consignment_info_block_widgets.dart';
import 'package:cheval_broker/src/Views/Widgets/Booking_widgets/cosignment_widgets/consignment_right_side_details.dart';
import 'package:cheval_broker/src/Views/Widgets/Booking_widgets/cosignment_widgets/consignment_table_header_text.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConsignmentNote extends StatelessWidget {
  const ConsignmentNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppbarWidget(titletext: "Challan",leadingOnPressed: (){Get.back();},),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          ButtonWidget(text: "Download", width: MediaQuery.of(context).size.width/3.4, height: 45, color: Theme.of(context).splashColor,textcolor: Colors.black,onPressed:(){},textsize: 18,),
           16.vspace,
            Center(
              child: Container(
                width: 630,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 2),
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 4)
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 100,
                            child: Image.asset(Appimage.logo),
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Booking Company Name',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black)),
                                      ConsignmentCommonText(text: "Booking company address"),
                                      ConsignmentCommonText(text: "Website"),
                                      ConsignmentCommonText(text: "Email"),
                                      ConsignmentCommonText(text: "Phone"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(color: Colors.black, thickness: 2),
                    const Center(
                      child: Text(
                        'CONSIGNMENT NOTE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ),
            
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              ConsignmentInfoBlockWidgets(title: "Consignor", lines: [
                                "Consignor Name: Gopala krishnan S",
                                "Address: 177 pilliyar kovil street shenbakkam vellore",
                                "Contact Person: 9894890950",
                                "Contact Number: 9894890950",
                                "GSTIN: 9894890950999999"
                              ], showTopBorder: true, showBottomBorder: true),
                                   ConsignmentInfoBlockWidgets(title: "Consignee", lines: [
                                "Consignor Name: Gopala krishnan S",
                                "Address: 177 pilliyar kovil street shenbakkam vellore",
                                "Contact Person: 9894890950",
                                "Contact Number: 9894890950",
                                "GSTIN: 9894890950999999"
                              ], showTopBorder: false, showBottomBorder: true),
                                   ConsignmentInfoBlockWidgets(title: "Buyer Other than Consignee", lines: [
                                "Consignor Name: Gopala krishnan S",
                                "Address: 177 pilliyar kovil street shenbakkam vellore",
                                "Contact Person: 9894890950",
                                "Contact Number: 9894890950",
                                "GSTIN: 9894890950999999"
                              ], showTopBorder: false, showBottomBorder: false),
                            ],
                          ),
                        ),
                    
                        // Right details
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              ConsignmentRightSideDetails(details:[
                                "LR #: 1234",
                                "Date:",
                                "From:",
                                "To:",
                                "Booking Office: VLR12"
                              ] , showTopBorder: true),
                                 ConsignmentRightSideDetails(details:[
                                "Vehicle No:",
                                "Vehicle Type:",
                                "Mode of Booking:",
                                "Mode of Freight:",
                                "Insurance:"
                              ], showTopBorder: false),
                              ConsignmentRightSideDetails(details: [
                                "Invoice #:",
                                "Volume:",
                                "Invoice Value:",
                                "Destination No:",
                                "Owner Risk:"
                              ], showTopBorder: false),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Table(
                      border:  const TableBorder(
                         top: BorderSide(color: Colors.black, width: 2),
                          bottom: BorderSide(color: Colors.black, width: 2),
                             verticalInside: BorderSide(color: Colors.black, width: 2) ,
                            horizontalInside: BorderSide(color: Colors.black, width: 2),
                      ),
                      columnWidths: const {
                        0: FixedColumnWidth(40),
                        1: FlexColumnWidth(),
                        2: FlexColumnWidth(),
                        3: FlexColumnWidth(),
                        4: FixedColumnWidth(80),
                      },
                      children: [
                        const TableRow(
                          decoration: BoxDecoration(color: Colors.white),
                          children: [
                            ConsignmentTableHeaderText(text: "SR"),
                            ConsignmentTableHeaderText(text: "No of Packages"),
                            ConsignmentTableHeaderText(text:"Types Of Packing" ),
                            ConsignmentTableHeaderText(text:"Description" ),
                            ConsignmentTableHeaderText(text: "Weight"),
                          ],
                        ),
                          TableRow(
                            children: List.generate(
                              5,
                              (index) => Container(
                                height: 60,
                                padding: const EdgeInsets.all(8),
                                alignment: Alignment.center,
                                child: const ConsignmentCommonText(text: "")
                              ),
                            ),
                          ),
                                                TableRow(
                            children: List.generate(
                              5,
                              (index) => Container(
                                height: 20,
                                padding: const EdgeInsets.all(8),
                                alignment: Alignment.center,
                                child: const ConsignmentCommonText(text: ""),
                              ),
                            ),
                          ),
                          
                      ],
                    ),
            
                    // GST & Signatures
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Table(
            
                      border: const TableBorder(
                             right: BorderSide(color: Colors.black, width: 2),
                            horizontalInside: BorderSide(color: Colors.black, width: 2),
                      ),
                      columnWidths: const {
                        0: FixedColumnWidth(130),
                      },
                      children: [
                        const TableRow(
                          decoration: BoxDecoration(color: Colors.white),
                          children: [
                            ConsignmentTableHeaderText(text: "GSTIN:"),
                          ],
                        ),
                          const TableRow(
                            children: [
                                         Padding(
                                           padding: EdgeInsets.all(8.0),
                                           child: ConsignmentCommonText(text: "GSTIN Transactions Covered Under Reverse Charge SAC - 996791. Goods booked & carried subject to conditions overleaf.",fontSize: 12,),
                                         ),
                            ]
                          ),
                                              TableRow(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                height:150,
                                child: const ConsignmentCommonText(text: "For Booking Company Name")),
                            ]
                          ),
                          
                      ],
                    ),
                        Expanded(
                          child: Column(
                            children: [
                               Container(
                                 height: MediaQuery.of(context).size.height/5.5,
                                 decoration: const BoxDecoration(
                                   border: Border(
                                     right: BorderSide(color: Colors.black, width: 2),
                                   ),
                                 ),
                                 alignment: Alignment.bottomCenter,
                                 padding: const EdgeInsets.only(bottom: 8),
                                 child: const ConsignmentCommonText(text: "Consignor Sign")
                               ),
                         Container(
                         height: MediaQuery.of(context).size.height/5.6,
                           decoration: const BoxDecoration(
                             border: Border(
                               right: BorderSide(color: Colors.black, width: 2),
                               top: BorderSide(color: Colors.black, width: 2),
                             ),
                           ),
                           alignment: Alignment.bottomCenter,
                           padding: const EdgeInsets.only(bottom: 12),
                           child: const ConsignmentCommonText(text: "Consignee Sign")
                         ),
                            ],
                          ),
            
                        ),
                        Container(
                         height: MediaQuery.of(context).size.height/2.8,
                           alignment: Alignment.bottomCenter,
                           padding: const EdgeInsets.all(8),
                           child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                              ConsignmentCommonText(text: "For, Booking \nCompany Name"),
                              ConsignmentCommonText(text: "Booking Executive")
                             ],
                           ),
                         ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
