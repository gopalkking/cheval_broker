import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:cheval_broker/src/Views/Widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            24.vspace,
            Center(
                child: Text(
              'Login',
              style: Theme.of(context).textTheme.displayMedium,
            )),
            8.vspace,
            Text(
              'Enter your details to get Login to your account.',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Appcolors.appColors.shade100,
                  ),
              textAlign: TextAlign.center,
            ),
            46.vspace,
            Text(
              'Email ID / Phone Number',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Textformfieldwidget(
              textEditingController: phone,
              hinttext: 'Enter your email id',
            ),
            16.vspace,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Get.toNamed(Appnames.emailForgotPassword);
                    },
                    child: Text(
                      'Forgot password?',
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
              ],
            ),
            44.vspace,
            Center(
                child: ButtonWidget(
              text: 'Login',
              width: MediaQuery.of(context).size.width / 1,
              height: 55,
              color: theme.splashColor,
              onPressed: () {
                Get.toNamed(Appnames.navigator);
              },
            )),
            16.vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Didn’t have an account? ',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 16)),
                InkWell(
                  onTap: () {
                    Get.toNamed(Appnames.signup);
                  },
                  child: Text('Signup',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 18)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
