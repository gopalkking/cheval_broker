import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/back_arrow_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget  implements PreferredSizeWidget {
  final bool? centerTitile;
  final Function()? leadingOnPressed;
  final bool?titleLogo;
  final bool? leadingMenuButton;
  final String? titletext;
  final Widget? titlewidget;
  final bool? titleWidgetbool;
  final List<Widget>? actions;
  const AppbarWidget({super.key, this.leadingOnPressed,  this.actions, this.centerTitile, this.leadingMenuButton, this.titleLogo, this.titletext,this.titlewidget,this.titleWidgetbool});

  @override
  Widget build(BuildContext context) {
      ThemeData theme = Theme.of(context);
    return  AppBar(
        centerTitle: centerTitile,
        title: titleLogo==true?Image.asset(
            Appimage.logo,
            height: 140,
            width: 140,
          ): titleWidgetbool!=null?titlewidget:Text(
          titletext!,
          style: theme.textTheme.headlineSmall,
        )  ,
         leading: leadingMenuButton == true?CustomIconButton(icon:Icons.menu_sharp,onPressed:leadingOnPressed,):BackArrowWidget(
          backgroundColor: Colors.black,
          iconcolor: Colors.white,
          onPressed: leadingOnPressed,
          padingValue: 10,
        ),
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