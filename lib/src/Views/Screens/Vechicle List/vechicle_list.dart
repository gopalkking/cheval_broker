import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/Vechicle_list_widgets/add_edit_vechicle_dialog.dart';
import 'package:cheval_broker/src/Views/Widgets/common_answer_text.dart';
import 'package:cheval_broker/src/Views/Widgets/common_question_text.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/dialog_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/filter_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/popup_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:cheval_broker/src/Views/Widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class VechicleList extends StatefulWidget {
  const VechicleList({super.key});

  @override
  State<VechicleList> createState() => _VechicleListState();
}

class _VechicleListState extends State<VechicleList> {
  TextEditingController vechicleNumber = TextEditingController();
  TextEditingController vechicleModel = TextEditingController();
  TextEditingController vechicleType = TextEditingController();
  TextEditingController rcNumber = TextEditingController();
  TextEditingController rcExpires = TextEditingController();
  TextEditingController permitNumber = TextEditingController();
  TextEditingController permitExpires = TextEditingController();
  TextEditingController pucStatus = TextEditingController();
  TextEditingController insuranceNumber = TextEditingController();
  TextEditingController insuranceExpires = TextEditingController();
  TextEditingController ownerName = TextEditingController();
  TextEditingController ownerPhone = TextEditingController();
  TextEditingController driverName = TextEditingController();
  TextEditingController driverPhone = TextEditingController();
  TextEditingController search = TextEditingController();
  DateTime selectedDate = DateTime.now();
  Future<void> selectDate(BuildContext context,TextEditingController controller) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(1960),
        lastDate: DateTime(2101),
        builder: (context, child) {
        return Theme(
          data: ThemeData.light(),
          child: child!,
        );
      },
        );
        
    if (picked != null) {
      setState(() {
        selectedDate = picked;
        controller.text = DateFormat('dd/MM/yyyy').format(selectedDate);
      });
    }
  }
  void showCustomDialog(BuildContext context, String title) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context,setState) {
            return PopupWidget(widget:  AddEditVechicleDialog(title: title, vechicleNumber: vechicleNumber, vechicleModel: vechicleModel, vechicleType: vechicleType, rcNumber: rcNumber, rcExpires: rcExpires, permitNumber: permitNumber, permitExpires: permitExpires, pucStatus: pucStatus, insuranceNumber: insuranceNumber, insuranceExpires: insuranceExpires, ownerName: ownerName, ownerPhone: ownerPhone, driverName: driverName, driverPhone: driverPhone,saveonPressed: (){},rcExpiresOnTap: () => selectDate(context,rcExpires),permitExpiresOnTap: ()=>selectDate(context, permitExpires),insuranceExpiresOnTap: ()=>selectDate(context, insuranceExpires),));
          }
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
       ThemeData theme = Theme.of(context);
    return Scaffold(
        body:  SingleChildScrollView(
          padding:   const EdgeInsets.all(14.0),
          child: Column(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonWidget(
                        text: '+ Add Vechicle',
                        textsize: 20,
                        textcolor: Colors.black,
                        width: MediaQuery.of(context).size.width / 1.8,
                        height: 50,
                        color: theme.splashColor,
                        onPressed: () {
                          showCustomDialog(context, "Add/Vechicle");
                        },
                      ),
                     FilterWidget(onPressed: (){
                       showMenu(
                              context: context,
                              position: const RelativeRect.fromLTRB(100, 250, 0,
                                  0), 
                                  color: Colors.black,
                              items: [
                                PopupMenuItem(
                                  value: 'option1',
                                  child: Text('This Month',style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),),
                                ),
                                PopupMenuItem(
                                  value: 'option1',
                                  child: Text('Last Month',style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),),
                                ),
                                 PopupMenuItem(
                                  value: 'option1',
                                  child: Text('Last 3 Month',style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),),
                                ),
                                PopupMenuItem(
                                  value: 'option2',
                                  child: Text('Last 6 Months',style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),),
                                ),
                              ],
                            );
                     })
                    ],
                  ),
                  16.vspace,
                   Container(
                     padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black),
                     child: ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.all(0),
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.all(6),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: theme.scaffoldBackgroundColor),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                  IconButton(
                                  onPressed: () {
                                    Get.toNamed(Appnames.vechicleListFullView);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  )),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const CommonQuestionText(text: "Vechicle Type"),
                                          8.vspace,
                                           const CommonQuestionText(text: "Vechicle Model"),
                                          8.vspace,
                                           const CommonQuestionText(text: "Vechicle Owner"),
                                          8.vspace,
                                           const CommonQuestionText(text: "Owner Phone"),
                                          8.vspace,
                                           const CommonQuestionText(text: "Vechicle No"),
                                          8.vspace,
                                           const CommonQuestionText(text: "Insurance"),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        const CommonAnswerText(text: "Truck"),
                                        8.vspace,
                                           const CommonAnswerText(text: "Truck"),
                                        8.vspace,
                                           const CommonAnswerText(text: "Name"),
                                        8.vspace,
                                           const CommonAnswerText(text: "Name"),
                                        8.vspace,
                                           const CommonAnswerText(text: "#2456"),
                                        8.vspace,
                                           const CommonAnswerText(text: "#2456"),
                                      ],
                                    ),
                                    
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
                                      width: MediaQuery.of(context).size.width /
                                          3.8,
                                      height: 48,
                                      color: const Color(Appcolors.lightblue),
                                      onPressed: () {
                                        showCustomDialog(context, "Edit/Vehicle");
                                      },
                                    ),
                                    26.hspace,
                                    ButtonWidget(
                                      text: 'Delete',
                                      iconbutton: true,
                                      icon: Icons.delete,
                                      iconcolor: Colors.red,
                                      textcolor: Colors.red,
                                      width: MediaQuery.of(context).size.width /
                                          3.8,
                                      height: 48,
                                      color: const Color(Appcolors.lightred),
                                      onPressed: () {
                                        alertBox();
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }),
                   ),
            ],
          ),
        ),
    );
  }
  alertBox() {
    return showDialog(
        context: context,
        builder: (context) {
          return MyDialogWidget(
            text1: 'Are you Sure?',
            text2: ' Are you sure? Do you want to delete Permanently (name).',
            buttontext: 'Delete',
            canceltext: 'Cancel',
            onPressed: () {
              Navigator.pop(context);
            },
            cancelButton: () {
              Navigator.pop(context);
            },
            imagetext: Appimage.delete,
          );
        });
  }
}