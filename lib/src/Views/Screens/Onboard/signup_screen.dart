import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:cheval_broker/src/Views/Widgets/back_arrow_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_button.dart';
import 'package:cheval_broker/src/Views/Widgets/phone_field_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/sizedbox.dart';
import 'package:cheval_broker/src/Views/Widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
   TextEditingController conformPassword = TextEditingController();
  TextEditingController phone = TextEditingController();
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
              Center(
                  child: Text(
                'Signup',
                style: Theme.of(context).textTheme.displayMedium,
              )),
              8.vspace,
              Text(
                'Enter your details to get Signup to your account.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Appcolors.appColors.shade100,
                    ),
                textAlign: TextAlign.center,
              ),
              24.vspace,
              Text(
                'Name',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Textformfieldwidget(
                textEditingController: name,
              ),
               16.vspace,
               Text(
                'Email',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Textformfieldwidget(
                textEditingController: email,
              ),
               16.vspace,
               Text(
                'Phone Number',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
                PhoneNumberField(textEditingController: phone, hintText: '9894980850'),
                16.vspace,
            Text(
              'Password',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Textformfieldwidget(
              textEditingController: password,
              obscureText: !isPasswordVisible,
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
              36.vspace,
              Center(
                  child: ButtonWidget(
                text: 'Signup',
                width: MediaQuery.of(context).size.width / 1,
                height: 55,
                color: theme.splashColor,
                onPressed: () {
                  Get.toNamed(Appnames.initalSubscribe);
                },
              )),
             16.vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account? ',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 16)),
                InkWell(
                  onTap: () {
                    Get.toNamed(Appnames.login);
                  },
                  child: Text('Login',
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
      ),
    );
  }
}
