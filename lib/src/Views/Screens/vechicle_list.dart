import 'package:cheval_broker/src/Views/Widgets/Custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class VechicleList extends StatefulWidget {
  const VechicleList({super.key});

  @override
  State<VechicleList> createState() => _VechicleListState();
}

class _VechicleListState extends State<VechicleList> {
  @override
  Widget build(BuildContext context) {
       ThemeData theme = Theme.of(context);
    return Scaffold(
        appBar: AppbarWidget(title:Text("Vehicle List",style: theme.textTheme.headlineSmall,) , 
       leadindButton: CustomIconButton(icon:  Icons.menu_sharp,onPressed: (){},),
        actions: const [
         CustomIconButton(icon:    Icons.search),
        ],),
    );
  }
}