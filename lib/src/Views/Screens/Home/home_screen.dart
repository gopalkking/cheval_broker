import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title:Image.asset(Appimage.logo,height: 140,width: 140,) , actions:  [
                      IconButton(onPressed: (){}, icon:  const CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.notifications_none_outlined,
                size: 25,
                color: Colors.white,
              ),
            ),),
             IconButton(onPressed: (){}, icon:  const CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.settings_outlined,
                size: 25,
                color: Colors.white,
              ),
            ),)
      ],centerTitile: true)
    );
  }
}