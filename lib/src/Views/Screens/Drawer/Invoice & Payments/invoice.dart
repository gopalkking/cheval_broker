
// import 'package:flutter/material.dart';

// class ViewInvoiceScreen extends StatelessWidget {
//   const ViewInvoiceScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Invoice & Payments"),
//         backgroundColor: Colors.yellow[800],
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(12),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 OutlinedButton(
//                   onPressed: () {},
//                   style: OutlinedButton.styleFrom(
//                     side: const BorderSide(color: Colors.amber),
//                     padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                   ),
//                   child: const Text(
//                     "Print",
//                     style: TextStyle(color: Colors.amber),
//                   ),
//                 ),
//                 const SizedBox(width: 12),
//                 ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.amber,
//                     padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                   ),
//                   child: const Text("Download"),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//             Center(
//               child: Container(
//                 width: 700,
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   border: Border.all(color: Colors.grey.shade300),
//                   borderRadius: BorderRadius.circular(8),
//                   boxShadow: const [BoxShadow(blurRadius: 4, color: Colors.black12)],
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       "INVOICE",
//                       style: TextStyle(
//                         fontSize: 28,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.amber,
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     const Text(
//                       "DETAILS",
//                       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                     ),
//                     const SizedBox(height: 8),
//                     const Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("Date: 08-09-2025"),
//                         Text("Invoice Number: #10235"),
//                         Text("Issue Date: 09-09-2025"),
//                         Text("Valid Till: 09-10-2025"),
//                       ],
//                     ),
//                     const SizedBox(height: 20),
//                     Table(
//                       border: TableBorder.all(color: Colors.grey.shade400),
//                       columnWidths: const {
//                         0: FlexColumnWidth(2),
//                         1: FlexColumnWidth(1),
//                         2: FlexColumnWidth(2),
//                       },
//                       children: const [
//                         TableRow(
//                           decoration: BoxDecoration(color: Colors.amber),
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.all(8.0),
//                               child: Text("Travel Place", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.all(8.0),
//                               child: Text("Persons", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.all(8.0),
//                               child: Text("Dates", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
//                             ),
//                           ],
//                         ),
//                         TableRow(
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.all(8.0),
//                               child: Text("London", textAlign: TextAlign.center),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.all(8.0),
//                               child: Text("3", textAlign: TextAlign.center),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.all(8.0),
//                               child: Text("12/02/2020 - 15/02/2020", textAlign: TextAlign.center),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 20),
//                     const PaymentTable(),
//                     const SizedBox(height: 20),
//                     const Align(
//                       alignment: Alignment.center,
//                       child: Text(
//                         "THANKS FOR YOUR APPROACH!",
//                         style: TextStyle(fontWeight: FontWeight.w600),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             const Text("Registered By"),
//                             const SizedBox(height: 6),
//                             Image.asset(
//                               "assets/Cheval Logo.png",
//                               height: 40,
//                             ),
//                           ],
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class PaymentTable extends StatelessWidget {
//   const PaymentTable({super.key});

//   final List<List<String>> data = const [
//     ["Air Fare", "1234", "\$2,500.00"],
//     ["Taxi", "2515", "\$180.00"],
//     ["Lodging", "2541", "\$2,000.00"],
//     ["Breakfast", "584", "\$500.00"],
//     ["Taxi", "654", "\$200.00"],
//     ["Lunch", "9547", "\$680.00"],
//     ["Dinner", "5142", "\$520.00"],
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Table(
//           columnWidths: const {
//             0: FlexColumnWidth(2),
//             1: FlexColumnWidth(1),
//             2: FlexColumnWidth(1),
//           },
//           border: TableBorder.all(color: Colors.grey.shade400),
//           children: [
//             const TableRow(
//               decoration: BoxDecoration(color: Colors.amber),
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Text("DESCRIPTION", style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Text("BILL NO.", style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Text("TOTAL AMOUNT", style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
//                 ),
//               ],
//             ),
//             ...data.asMap().entries.map((entry) {
//               int index = entry.key;
//               List<String> row = entry.value;
//               return TableRow(
//                 decoration: BoxDecoration(
//                   color: index % 2 == 1 ? Colors.grey.shade100 : null,
//                 ),
//                 children: row.map((cell) {
//                   return Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(cell, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold)),
//                   );
//                 }).toList(),
//               );
//             }),
//           ],
//         ),
//         const SizedBox(height: 16),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             _summaryRow("SUBTOTAL", "\$6,580.00", color: Colors.grey.shade100),
//             _summaryRow("TAX @ 5%", "\$329.00"),
//             _summaryRow("TOTAL", "\$6,909.00", color: Colors.amber, textColor: Colors.white),
//           ],
//         )
//       ],
//     );
//   }

//   Widget _summaryRow(String label, String amount, {Color? color, Color textColor = Colors.black}) {
//     return Container(
//       color: color,
//       padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(label, style: TextStyle(fontWeight: FontWeight.bold, color: textColor)),
//           Text(amount, style: TextStyle(fontWeight: FontWeight.w600, color: textColor)),
//         ],
//       ),
//     );
//   }
// }
