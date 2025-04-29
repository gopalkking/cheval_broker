import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_outline_button.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:cheval_broker/src/Views/Widgets/textformfield.dart';
import 'package:flutter/material.dart';

class BidnowDialog extends StatelessWidget {
     final TextEditingController bidNow;
   final Function()? saveonPressed;
  const BidnowDialog({super.key, required this.bidNow, this.saveonPressed});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Bid Now",
                  style: Theme.of(context).textTheme.titleLarge),
            ),
            16.vspace,
            Text(
              'Bidding Amount',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            8.vspace,
            Textformfieldwidget(
              textEditingController: bidNow,
              hinttext: 'Type Here',
              hintcolor: Colors.grey,
              border: const BorderSide(color: Colors.grey),
            ),
            16.vspace,
           Row( 
            mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(Appimage.alert),
                  6.hspace,
                    Text(
                  "(Vehicle Details will visible once \nbit confirmed)",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.red),
                ),
                ],
              ),
                   18.vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomOutlineButton(text: "Cancel", width: MediaQuery.of(context).size.width/3.4, height: 45, color: Theme.of(context).splashColor,onPressed: (){
                  Navigator.pop(context);
                },textcolor: Theme.of(context).splashColor,),
                26.hspace,
                ButtonWidget(text: "Save", width: MediaQuery.of(context).size.width/3.4, height: 45, color: Theme.of(context).splashColor,textcolor: Colors.black,onPressed:saveonPressed,textsize: 18,)
              ],
            ),
            16.vspace,
          ],
                ),
              );
  }
}