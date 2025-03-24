import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget  implements PreferredSizeWidget {
  final bool? centerTitile;
  final Widget title;
  final Function()? menuOnPressed;
  final List<Widget> actions;
  final Widget leadindButton;
  const AppbarWidget({super.key, required this.title, this.menuOnPressed, required this.actions, this.centerTitile, required this.leadindButton});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
        centerTitle: centerTitile,
        title: title,
         leading: leadindButton,
        //  IconButton(
        //     onPressed: menuOnPressed,
        //     icon: const CircleAvatar(
        //       backgroundColor: Colors.black,
        //       child: Icon(
        //         Icons.menu_sharp,
        //         size: 25,
        //         color: Colors.white,
        //       ),
        //     ),
        //     ),
            actions:actions,
             bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0.6),
          child: Container(
             decoration: const BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.black, blurRadius: 1.0)]),
            height: 0.8,
          ),
        ),
      );
  }
   @override
  Size get preferredSize => AppBar().preferredSize;
}