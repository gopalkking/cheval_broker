import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/back_arrow_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/phone_field_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneForgotPassword extends StatefulWidget {
  const PhoneForgotPassword({super.key});

  @override
  State<PhoneForgotPassword> createState() => _PhoneForgotPasswordState();
}

class _PhoneForgotPasswordState extends State<PhoneForgotPassword> {
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
                'Enter your Phone number so that we can send you OTP to reset Password',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Appcolors.appColors.shade100,
                    ),
                textAlign: TextAlign.center,
              ),
              8.vspace,
              Center(
                  child: Text(
                'Password Reset with Phone number',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              )),
              46.vspace,
              Text(
                'Phone Number',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
                PhoneNumberField(textEditingController: phone, hintText: '9894980850'),
              46.vspace,
              Center(
                  child: ButtonWidget(
                text: 'Send OTP',
                width: MediaQuery.of(context).size.width / 1,
                height: 55,
                color: theme.splashColor,
                onPressed: () {
                                          Get.toNamed(Appnames.forgotPasswordOTP);
                },
              )),
              32.vspace,
              Center(
                child: TextButton(
                    onPressed: () {
                        Get.toNamed(Appnames.emailForgotPassword);
                    },
                    child: Text(
                      'Try with email ID',
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
