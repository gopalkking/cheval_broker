import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:flutter/material.dart';

class BackArrowWidget extends StatelessWidget {
   final Function()? onPressed;
  const BackArrowWidget({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return   IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed:onPressed,
            style: IconButton.styleFrom(
             backgroundColor: Appcolors.appColors.shade100,
             padding:  const EdgeInsets.only(left: 9)
           )
          );
  }
}