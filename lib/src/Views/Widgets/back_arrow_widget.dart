import 'package:flutter/material.dart';

class BackArrowWidget extends StatelessWidget {
   final Function()? onPressed;
   final Color backgroundColor;
   final Color? iconcolor;
   final double?padingValue;
  const BackArrowWidget({super.key, this.onPressed, required this.backgroundColor, this.iconcolor, this.padingValue});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  EdgeInsets.all(padingValue??0),
      child: IconButton(
              icon: Icon(Icons.arrow_back_ios,color: iconcolor,),
              onPressed:onPressed,
              style: IconButton.styleFrom(
               backgroundColor: backgroundColor,
               padding:  const EdgeInsets.only(left: 9)
             )
            ),
    );
  }
}