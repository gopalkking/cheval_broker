import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/invoice_widgets/invoice_table_cell_text_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/invoice_widgets/invoice_text.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      ["Air Fare", "1234", "\$2,500.00"],
      ["Taxi", "2515", "\$180.00"],
      ["Lodging", "2541", "\$2,900.00"],
      ["Breakfast", "5201", "\$50.00"],
      ["Taxi", "9654", "\$200.00"],
      ["Lunch", "9547", "\$180.00"],
      ["Dinner", "5142", "\$520.00"],
    ];
    return Scaffold(
      appBar: AppbarWidget(
        titletext: "Invoice",
        leadingOnPressed: () {
          Get.back();
        },
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "INVOICE",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown),
              ),
              8.vspace,
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("DETAILS",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                  Text("Date: 08-09-2025",
                      style: TextStyle(color: Colors.black)),
                  Text("Invoice Number: #10235",
                      style: TextStyle(color: Colors.black)),
                  Text("Issue Date: 09-09-2025",
                      style: TextStyle(color: Colors.black)),
                  Text("Valid Till: 09-10-2025",
                      style: TextStyle(color: Colors.black)),
                ],
              ),
              8.vspace,
              Table(
                border: TableBorder.all(),
                columnWidths: const {
                  0: FlexColumnWidth(3),
                  1: FlexColumnWidth(2),
                  2: FlexColumnWidth(3),
                },
                children: [
                  TableRow(
                    children: [
                      InvoiceTableCellTextWidget(
                        text: "Travel Place",
                        color: Colors.brown.shade400,
                        bold: true,
                      ),
                      InvoiceTableCellTextWidget(
                        text: "Persons",
                        color: Colors.brown.shade400,
                        bold: true,
                      ),
                      InvoiceTableCellTextWidget(
                        text: "Dates",
                        color: Colors.brown.shade400,
                        bold: true,
                      ),
                    ],
                  ),
                  const TableRow(children: [
                    InvoiceTableCellTextWidget(text: "London"),
                    InvoiceTableCellTextWidget(text: "3"),
                    InvoiceTableCellTextWidget(text: "12/02/2020 - 15/02/2020"),
                  ]),
                ],
              ),
              16.vspace,
              Table(
                border: TableBorder.all(),
                columnWidths: const {
                  0: FlexColumnWidth(3),
                  1: FlexColumnWidth(2),
                  2: FlexColumnWidth(2),
                },
                children: [
                  TableRow(
                    decoration: BoxDecoration(color: Colors.brown.shade300),
                    children: const [
                      InvoiceTableCellTextWidget(
                        text: "DESCRIPTION",
                        color: Colors.white,
                        bold: true,
                      ),
                      InvoiceTableCellTextWidget(
                        text: "BILL NO",
                        color: Colors.white,
                        bold: true,
                      ),
                      InvoiceTableCellTextWidget(
                        text: "TOTAL AMOUNT",
                        color: Colors.white,
                        bold: true,
                      ),
                    ],
                  ),
                  ...items.map(
                    (item) => TableRow(
                      children: item
                          .map((text) => InvoiceTableCellTextWidget(text: text))
                          .toList(),
                    ),
                  ),
                ],
              ),
              16.vspace,
              Align(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Table(
                      border: TableBorder.all(),
                      columnWidths: const {
                        0: FixedColumnWidth(100),
                        1: FixedColumnWidth(80),
                      },
                      children: [
                        const TableRow(
                          children: [
                            InvoiceTableCellTextWidget(
                              text: "Subtotal",
                              bold: true,
                            ),
                            InvoiceTableCellTextWidget(text: "\$6,580.00"),
                          ],
                        ),
                        const TableRow(
                          children: [
                            InvoiceTableCellTextWidget(
                              text: "Tax @ 5%",
                              bold: true,
                            ),
                            InvoiceTableCellTextWidget(text: "\$329.00"),
                          ],
                        ),
                        TableRow(
                          decoration:
                              BoxDecoration(color: Colors.brown.shade300),
                          children: const [
                            InvoiceTableCellTextWidget(
                              text: "Total",
                              color: Colors.white,
                              bold: true,
                            ),
                            InvoiceTableCellTextWidget(text: "\$6,909.00"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(height: 40, color: Colors.black),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("TO",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        InvoiceText(text: "jhon"),
                        InvoiceText(
                            text:
                                "177 pilliyar kovil street shenbakkam vellore - 632008"),
                        InvoiceText(text: "98978909790"),
                        InvoiceText(text: "jhon@gmail.com"),
                      ],
                    ),
                  ),
                  SizedBox(width: 40),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("FROM",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        InvoiceText(text: "jhon"),
                        InvoiceText(
                            text:
                                "177 pilliyar kovil street shenbakkam vellore - 632008"),
                        InvoiceText(text: "98978909790"),
                        InvoiceText(text: "jhon@gmail.com"),
                      ],
                    ),
                  ),
                ],
              ),
              8.vspace,
              const Text("TERMS",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black)),
              const InvoiceText(
                  text:
                      "Payment must be made within 20 days. If the payment is not done in time, there will be a late fee charge per month from the due amount."),
              16.vspace,
              const Text("PAYMENT DETAILS",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black)),
              const InvoiceText(text: "Name: [Account Name]"),
              const InvoiceText(text: "Account Number: [Account Number]"),
              const InvoiceText(text: "Bank Name: [Bank Name]"),
              const InvoiceText(text: "Location: [Location]"),
              24.vspace,
              const Center(
                child: Text(
                  "THANKS FOR YOUR APPROACH!",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black),
                ),
              ),
            ])),
      ),
    );
  }
}
