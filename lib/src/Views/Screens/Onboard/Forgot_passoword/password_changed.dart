import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/back_arrow_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              46.vspace,
              BackArrowWidget(
                onPressed: () {
                  Get.back();
                },
                backgroundColor: Appcolors.appColors.shade100,
              ),
              8.vspace,
              Center(child: Image.asset(Appimage.passwordChange)),
              16.vspace,
              Center(
                  child: Text(
                'Password Changed!',
                style: Theme.of(context).textTheme.displayMedium,
              )),
              46.vspace,
                Text(
                'You\'ve Successfully Completed Your Password Reset!',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Appcolors.appColors.shade100,
                    ),
                textAlign: TextAlign.center,
              ),
              46.vspace,
              Center(
                  child: ButtonWidget(
                text: 'Log In Now',
                width: MediaQuery.of(context).size.width / 1,
                height: 55,
                color: theme.splashColor,
                onPressed: () {
                   Get.toNamed(Appnames.login);
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
