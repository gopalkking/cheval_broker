import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget  implements PreferredSizeWidget {
  final bool? centerTitile;
  final Widget title;
  final Function()? menuOnPressed;
  final List<Widget> actions;
  const AppbarWidget({super.key, required this.title, this.menuOnPressed, required this.actions, this.centerTitile});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
        centerTitle: centerTitile,
        title: title,
        //title: Image.asset(Appimage.logo,height: 140,width: 140,),
         leading: IconButton(
            onPressed: menuOnPressed,
            icon: const CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.menu_sharp,
                size: 25,
                color: Colors.white,
              ),
            ),
            ),
            actions:actions,
            //  [
            //   IconButton(onPressed: (){}, icon:  const CircleAvatar(
            //   backgroundColor: Colors.black,
            //   child: Icon(
            //     Icons.notifications_none_outlined,
            //     size: 25,
            //     color: Colors.white,
            //   ),
            // ),),
            //  IconButton(onPressed: (){}, icon:  const CircleAvatar(
            //   backgroundColor: Colors.black,
            //   child: Icon(
            //     Icons.settings_outlined,
            //     size: 25,
            //     color: Colors.white,
            //   ),
            // ),)
            // ],
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