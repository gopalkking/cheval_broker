import 'package:cheval_broker/src/Views/Screens/Home/navigator.dart';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:cheval_broker/src/Views/Widgets/textformfield.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
          title: Image.asset(
            Appimage.logo,
            height: 140,
            width: 140,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.notifications_none_outlined,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.settings_outlined,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            )
          ],
          centerTitile: true),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width / 1,
                child: Center(
                    child: Textformfieldwidget(
                  textEditingController: search,
                  borderradius: 24,
                  hinttext: "Search",
                  hintcolor: Colors.white,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                )))
          ],
        ),
      ),
    );
  }
}
