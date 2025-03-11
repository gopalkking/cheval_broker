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
        appBar: AppbarWidget(title:Text("Vehicle List",style: theme.textTheme.headlineSmall,) , actions:[
                 IconButton(onPressed: (){}, icon:   const CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.search,
                size: 25,
                color: Colors.white,
              ),
            ),),
      ],),
    );
  }
}