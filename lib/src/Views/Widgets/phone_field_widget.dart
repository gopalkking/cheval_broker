import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  
  const PhoneNumberField(
      {super.key,
      required this.textEditingController,
      required this.hintText,});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return IntlPhoneField(
      style: Theme.of(context).textTheme.labelMedium!.copyWith(
        color: Appcolors.appColors.shade100,
      ),
      textAlign: TextAlign.center,
      controller: textEditingController,
      dropdownIcon: const Icon(Icons.arrow_drop_down,color: Colors.white,),
      dropdownIconPosition: IconPosition.trailing,
      decoration: InputDecoration(
        contentPadding:const EdgeInsets.all(16),
        border: OutlineInputBorder(
          gapPadding: 2.0,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: theme.splashColor
          )
        ),
          enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),  
        filled: true,
        fillColor: const Color(0xFF1D1D1D),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(color:Appcolors.appColors.shade300),
         errorStyle: const TextStyle(
              color: Colors.yellow,
              fontWeight: FontWeight.bold,
            ),
        counterStyle:const TextStyle(
              color: Colors.white, 
              fontSize: 12,
            ),
    
      ),
      initialCountryCode: 'IN',
    );
  }
}
