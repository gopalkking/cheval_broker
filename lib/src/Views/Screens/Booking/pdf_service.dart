import 'dart:io';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;


class PdfService {

  Future<Uint8List> generateConsignmentNotePDF() async {
  final pdf = pw.Document();
  final Uint8List imageBytes = await rootBundle.load(Appimage.logo).then((data) => data.buffer.asUint8List());
  final pw.ImageProvider logoImage = pw.MemoryImage(imageBytes);


  pdf.addPage(
    pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return [
          pw.Container(
            decoration: pw.BoxDecoration(
              border: pw.Border.all(color: PdfColors.black, width: 2),
              color: PdfColors.white,
            ),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.stretch,
              children: [
                pw.SizedBox(height: 10),
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                  children: [
                    pw.SizedBox(
                      width: 100,
                      child: pw.Image(logoImage), 
                    ),
                    pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text("Booking Company Name", style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
                        pw.Text("Booking company address"),
                        pw.Text("Website"),
                        pw.Text("Email"),
                        pw.Text("Phone"),
                      ],
                    )
                  ],
                ),
                pw.Divider(color: PdfColors.black, thickness: 2),
                pw.Center(
                  child: pw.Text("CONSIGNMENT NOTE", style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold)),
                ),
                pw.SizedBox(height: 5),
                pw.Row(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Expanded(
                      flex: 2,
                      child: pw.Column(
                        children: [
                          _infoBlock("Consignor", [
                            "Name: Gopala krishnan S",
                            "Address: 177 pilliyar kovil street shenbakkam vellore",
                            "Contact Person: 9894890950",
                            "Contact Number: 9894890950",
                            "GSTIN: 9894890950999999",
                          ],true,true),
                          _infoBlock("Consignee", [
                            "Name: Gopala krishnan S",
                            "Address: 177 pilliyar kovil street shenbakkam vellore",
                            "Contact Person: 9894890950",
                            "Contact Number: 9894890950",
                            "GSTIN: 9894890950999999",
                          ],true,false),
                          _infoBlock("Buyer Other than Consignee", [
                            "Name: Gopala krishnan S",
                            "Address: 177 pilliyar kovil street shenbakkam vellore",
                            "Contact Person: 9894890950",
                            "Contact Number: 9894890950",
                            "GSTIN: 9894890950999999",
                          ],false,false),
                        ],
                      ),
                    ),
                    pw.Expanded(
                      flex: 2,
                      child: pw.Column(
                        children: [
                          _rightInfoBlock([
                            "LR #: 1234",
                            "Date:",
                            "From:",
                            "To:",
                            "Booking Office: VLR12"
                          ],true),
                          _rightInfoBlock([
                            "Vehicle No:",
                            "Vehicle Type:",
                            "Mode of Booking:",
                            "Mode of Freight:",
                            "Insurance:"
                          ],true),
                          _rightInfoBlock([
                            "Invoice #:",
                            "Volume:",
                            "Invoice Value:",
                            "Destination No:",
                            "Owner Risk:"
                          ],true),
                        ],
                      ),
                    )
                  ],
                ),
                pw.Table(
                  border: pw.TableBorder.all(color: PdfColors.black, width: 2),
                  columnWidths: {
                    0: const pw.FixedColumnWidth(40),
                    1: const pw.FlexColumnWidth(),
                    2: const pw.FlexColumnWidth(),
                    3: const pw.FlexColumnWidth(),
                    4: const pw.FixedColumnWidth(80),
                  },
                  children: [
                    pw.TableRow(
                      decoration: const pw.BoxDecoration(color: PdfColors.grey300),
                      children: [
                        pw.Text("SR", textAlign: pw.TextAlign.center),
                        pw.Text("No of Packages", textAlign: pw.TextAlign.center),
                        pw.Text("Types Of Packing", textAlign: pw.TextAlign.center),
                        pw.Text("Description", textAlign: pw.TextAlign.center),
                        pw.Text("Weight", textAlign: pw.TextAlign.center),
                      ],
                    ),
                     pw.TableRow(
                            children: List.generate(
                              5,
                              (index) => pw.Container(
                                height: 70,
                                padding: const pw.EdgeInsets.all(8),
                                alignment: pw.Alignment.center,
                                child: pw.Text("")
                              ),
                            ),
                          ),
                                                pw.TableRow(
                            children: List.generate(
                              5,
                              (index) => pw.Container(
                                height: 20,
                                padding: const pw.EdgeInsets.all(8),
                                alignment: pw.Alignment.center,
                                child: pw.Text(""),
                              ),
                            ),
                          ),
                  ],
                ),
                //pw.SizedBox(height: 10),

   pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                          pw.Table(
            
                      border: const pw.TableBorder(
                             right: pw.BorderSide(color: PdfColors.black, width: 2),
                            horizontalInside: pw.BorderSide(color: PdfColors.black, width: 2),
                      ),
                      columnWidths: const {
                        0: pw.FixedColumnWidth(210),
                      },
                      children: [
                         pw.TableRow(
                          //decoration: pw.BoxDecoration(color: Colors.white),
                          children: [
                            pw.Text("GSTIN:"),
                          ],
                        ),
                           pw.TableRow(
                            children: [
                                         pw.Padding(
                                           padding: const pw.EdgeInsets.all(8.0),
                                           child: pw.Text("GSTIN Transactions Covered Under Reverse Charge SAC - 996791. Goods booked & carried subject to conditions overleaf.",style: const pw.TextStyle(fontSize: 12)),
                                         ),
                            ]
                          ),
                                              pw.TableRow(
                            children: [
                              pw.Container(
                                padding: const pw.EdgeInsets.all(8),
                                height:71,
                                child: pw.Text("For Booking Company Name")),
                            ]
                          ),
                          
                      ],
                    ),
                        pw.Expanded(
                          child: pw.Column(
                            children: [
                               pw.Container(
                                height: 78,
                                 decoration: const pw.BoxDecoration(
                                   border: pw.Border(
                                     right: pw.BorderSide(color: PdfColors.black, width: 2),
                                   ),
                                 ),
                                 alignment: pw.Alignment.bottomCenter,
                                 padding: const pw.EdgeInsets.only(bottom: 8),
                                 child: pw.Text("Consignor Sign")
                               ),
                        pw.Container(
                          height: 78,
                           decoration: const pw.BoxDecoration(
                             border: pw.Border(
                               right: pw.BorderSide(color: PdfColors.black, width: 2),
                               top: pw.BorderSide(color: PdfColors.black, width: 2),
                             ),
                           ),
                           alignment: pw.Alignment.bottomCenter,
                           padding: const pw.EdgeInsets.only(bottom: 12),
                           child:  pw.Text("Consignee Sign")
                         ),
                            ],
                          ),
            
                        ),
                        pw.Container(
                         //height: MediaQuery.of(context).size.height/2.8,
                           alignment: pw.Alignment.bottomCenter,
                           padding: const pw.EdgeInsets.all(8),
                           child:  pw.Column(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                             children: [
                              pw.Text("For, Booking \nCompany Name"),
                              pw.Text("Booking Executive")
                             ],
                           ),
                         ),
                      ],
                    ),
              ],
            ),
          ),
        ];
      },
    ),
  );

  return pdf.save();
  }

  pw.Widget _infoBlock(String title, List<String> lines,bool showBottomBorder,bool showTopBorder) {
  return pw.Container(
      width: double.infinity,
      padding: const pw.EdgeInsets.all(8),
      decoration: pw.BoxDecoration(
          border: pw.Border(bottom: showBottomBorder
              ?  const pw.BorderSide(color: PdfColors.black, width: 2)
              : pw.BorderSide.none,right: const pw.BorderSide(color: PdfColors.black, width: 2),top: showTopBorder
              ?  const pw.BorderSide(color: PdfColors.black, width: 2)
              : pw.BorderSide.none, ),
      ),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text(title,
              style:
                   pw.TextStyle(fontWeight: pw.FontWeight.bold, color: PdfColors.black)),
          for (var line in lines)
            pw.Text(line),
        ],
      ),
    );
}

pw.Widget _rightInfoBlock(List<String> details,bool showTopBorder) {
  return pw.Container(
      width: double.infinity,
      padding: const pw.EdgeInsets.all(8),
      decoration: pw.BoxDecoration(
        border: pw.Border(
          bottom: const pw.BorderSide(color: PdfColors.black, width: 2),
          top: showTopBorder
              ?  const pw.BorderSide(color: PdfColors.black, width: 2)
              : pw.BorderSide.none,
        ),
      ),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: details
            .map((text) => pw.Text(text))
            .toList(),
      ),
    );
}



  Future<void> savepdfFile(String fileName, Uint8List byteList) async{
    final output = await getTemporaryDirectory();
    var filePath = "${output.path}/$fileName.pdf";
    final file = File(filePath);
    await file.writeAsBytes(byteList);
    await OpenFile.open(filePath);
  }

  // Future<void> savepdfFile(String fileName, Uint8List byteList) async {
  // var status = await Permission.storage.request();

  // if (status.isGranted) {
  //   final output = await getExternalStorageDirectory(); // For Android
  //   var filePath = "${output!.path}/$fileName.pdf";
  //   final file = File(filePath);
  //   await file.writeAsBytes(byteList);
  //   await OpenFile.open(filePath);
  // } else {
  //   print("Storage permission not granted");
  // }}


  // Future<void> savepdfFile(String fileName, Uint8List byteList) async {
  // if (Platform.isAndroid) {
  //   final downloadsDirectory = Directory('/storage/emulated/0/Download');
  //   final filePath = "${downloadsDirectory.path}/$fileName.pdf";
  //   final file = File(filePath);
  //   await file.writeAsBytes(byteList);

  //   await OpenFile.open(filePath);
  // } else if (Platform.isIOS) {
  //   final directory = await getApplicationDocumentsDirectory();
  //   final filePath = "${directory.path}/$fileName.pdf";
  //   final file = File(filePath);
  //   await file.writeAsBytes(byteList);
  //   await OpenFile.open(filePath);
  // }
//}
}