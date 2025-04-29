import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_outline_button.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';

class MyDialogWidget extends StatelessWidget {
  final String imagetext;
  final String text1;
  final String? text2;
  final String buttontext;
  final String canceltext;
  final Function()? onPressed;
  final Function()? cancelButton;
  final Color? buttoncolor;
  const MyDialogWidget(
      {super.key,
      required this.imagetext,
      required this.text1,
      this.text2,
      required this.buttontext,
      required this.canceltext,
      this.onPressed,
      this.cancelButton, this.buttoncolor});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      backgroundColor: theme.scaffoldBackgroundColor,
      contentPadding: const EdgeInsets.all(16),
      title: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              Center(child: Image.asset(imagetext)),
              16.vspace,
              Text(
                text1,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.w700, fontSize: 22),
                textAlign: TextAlign.center,
              ),
              16.vspace,
              Text(
                text2.toString(),
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.w500, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              16.vspace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                CustomOutlineButton(text: canceltext, width: MediaQuery.of(context).size.width/3.7, height: 45, color: Colors.white,onPressed: cancelButton,),
                  ButtonWidget(text: buttontext, width: MediaQuery.of(context).size.width/3.7, height: 45, color: buttoncolor??Colors.red,textcolor: Colors.white,onPressed:onPressed,textsize: 18,)
              ],)
            ],
          ),
          Positioned(
              top: -45,
              right: -45,
              child:IconButton(
                      icon: const Icon(Icons.cancel_rounded,
                          color: Colors.white, size: 36),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ), ),
        ],
      ),
    );
  }
}
