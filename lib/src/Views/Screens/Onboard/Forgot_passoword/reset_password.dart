import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Utilies/images.dart';
import 'package:cheval_broker/src/Views/Widgets/back_arrow_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:cheval_broker/src/Views/Widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
     TextEditingController conformPassword = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isPasswordVisible = false;
  bool isConformPasswordVisible = false;

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
              Center(child: Image.asset(Appimage.resetPassword)),
              16.vspace,
              Center(
                  child: Text(
                'Reset Password',
                style: Theme.of(context).textTheme.displayMedium,
              )),
              16.vspace,
                Center(
                  child: Text(
                  'Please kindly set your new password.',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Appcolors.appColors.shade100,
                      ),
                  textAlign: TextAlign.center,
                                ),
                ),
              46.vspace,
             Text(
              'Password',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Textformfieldwidget(
              textEditingController: password,
              obscureText: !isPasswordVisible,
              hinttext: 'Password',
              suffixIcon: IconButton(
                icon: Icon(
                  isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              ),
            ),
            16.vspace,
             Text(
              'Conform Password',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Textformfieldwidget(
              textEditingController: conformPassword,
              obscureText: !isConformPasswordVisible,
              hinttext: 'Conform Password',
              suffixIcon: IconButton(
                icon: Icon(
                  isConformPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    isConformPasswordVisible = !isConformPasswordVisible;
                  });
                },
              ),
            ),
            46.vspace,
             Center(
                child: ButtonWidget(
              text: 'Reset Password',
              width: MediaQuery.of(context).size.width / 1,
              height: 55,
              color: theme.splashColor,
              onPressed: () {
                   Get.toNamed(Appnames.passwordChanged);
              },
            )),
            ],
          ),
        ),
      ),
    );
  }
}
