import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/back_arrow_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:cheval_broker/src/Views/Widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailForgotPassword extends StatefulWidget {
  const EmailForgotPassword({super.key});

  @override
  State<EmailForgotPassword> createState() => _EmailForgotPasswordState();
}

class _EmailForgotPasswordState extends State<EmailForgotPassword> {
  TextEditingController phone = TextEditingController();
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
              Center(child: Image.asset(Appimage.forgotPassword)),
              Center(
                  child: Text(
                'Forgot Password?',
                style: Theme.of(context).textTheme.displayMedium,
              )),
              8.vspace,
              Text(
                'Enter your email so that we can send you password reset link',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Appcolors.appColors.shade100,
                    ),
                textAlign: TextAlign.center,
              ),
              8.vspace,
              Center(
                  child: Text(
                'Password Reset with mail ID',
                style: Theme.of(context).textTheme.headlineSmall,
              )),
              46.vspace,
              Text(
                'Email ID',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Textformfieldwidget(
                textEditingController: phone,
                hinttext: 'Enter your email id',
              ),
              46.vspace,
              Center(
                  child: ButtonWidget(
                text: 'Send Email',
                width: MediaQuery.of(context).size.width / 1,
                height: 55,
                color: theme.splashColor,
                onPressed: () {
                  Get.toNamed(Appnames.checkEmail);
                },
              )),
              32.vspace,
              Center(
                child: TextButton(
                    onPressed: () {
                        Get.toNamed(Appnames.phoneForgotPassword);
                    },
                    child: Text(
                      'Try with Phone number',
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
