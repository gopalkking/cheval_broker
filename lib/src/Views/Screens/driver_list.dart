import 'package:cheval_broker/src/Views/Widgets/Custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class DriverList extends StatefulWidget {
  const DriverList({super.key});

  @override
  State<DriverList> createState() => _DriverListState();
}

class _DriverListState extends State<DriverList> {
  @override
  Widget build(BuildContext context) {
       ThemeData theme = Theme.of(context);
    return Scaffold(appBar:AppbarWidget(title:Text("Driver List",style: theme.textTheme.headlineSmall,) , 
    leadindButton: CustomIconButton(icon:  Icons.menu_sharp,onPressed: (){},),
        actions: const [
         CustomIconButton(icon:    Icons.search),
        ],),);
  }
}