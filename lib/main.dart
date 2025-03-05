import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Routes/routes_page.dart';
import 'package:cheval_broker/src/Views/Utilies/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
      return GetMaterialApp(
      title: 'Cheval Broker',
      theme: Apptheme.lightTheme,
      themeMode: ThemeMode.system,
      getPages: AppRoutes.pages(),
      defaultTransition: Transition.rightToLeftWithFade,
      debugShowCheckedModeBanner: false,
      initialRoute: Appnames.splash,
    );
  }
}

