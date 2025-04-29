import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/back_arrow_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class ForgotPasswordOtp extends StatefulWidget {
  const ForgotPasswordOtp({super.key});

  @override
  State<ForgotPasswordOtp> createState() => _ForgotPasswordOtpState();
}

class _ForgotPasswordOtpState extends State<ForgotPasswordOtp> {
   final pinputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
         final defaultPinTheme = PinTheme(
      width: 66,
      height: 66,
      textStyle: const TextStyle(
        fontSize: 24,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        color:  const Color(0xFF1D1D1D),
        borderRadius: BorderRadius.circular(8)
      ),
    );
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
                'Enter your OTP',
                style: Theme.of(context).textTheme.displayMedium,
              )),
              46.vspace,
              Pinput(
                      controller: pinputController,
                      length: 6,
                      keyboardType: TextInputType.phone,
                      defaultPinTheme: defaultPinTheme,
                      errorPinTheme: defaultPinTheme.copyBorderWith(
                        border: Border.all(color: Colors.redAccent),
                      ),
                      onSubmitted: (value) {
                      },
                    ),
              46.vspace,
              Center(
                  child: ButtonWidget(
                text: 'Submit',
                width: MediaQuery.of(context).size.width / 1,
                height: 55,
                color: theme.splashColor,
                onPressed: () {
                   Get.toNamed(Appnames.resetPassword);
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
