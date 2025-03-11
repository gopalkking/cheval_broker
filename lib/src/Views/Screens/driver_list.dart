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
    return Scaffold(appBar:AppbarWidget(title:Text("Driver List",style: theme.textTheme.headlineSmall,) , actions:[
                 IconButton(onPressed: (){}, icon:   const CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.search,
                size: 25,
                color: Colors.white,
              ),
            ),),
      ],),);
  }
}