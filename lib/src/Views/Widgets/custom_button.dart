import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color color;
  final Function()? onPressed;
  final Color? textcolor;
  final Color? iconcolor;
  final bool? iconbutton;
  final IconData? icon;
  final double? textsize;
  const ButtonWidget({super.key, required this.text, required this.width, required this.height, this.onPressed, required this.color, this.textcolor, this.iconbutton, this.icon, this.iconcolor, this.textsize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          )
        ),
        child: iconbutton==true? Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           Icon(icon,color: iconcolor,),
            Text(text,style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: textcolor)),
          ],
        ):Text(text,style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: textcolor,fontSize: textsize))),
    );
  }
}