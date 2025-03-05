import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Screens/Onboard/Forgot_passoword/email_forgot_password.dart';
import 'package:cheval_broker/src/Views/Screens/Onboard/Forgot_passoword/phone_forgot_password.dart';
import 'package:cheval_broker/src/Views/Screens/Onboard/login_screen.dart';
import 'package:cheval_broker/src/Views/Screens/Onboard/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static pages() => [
            GetPage(
            name: Appnames.splash,
            page: () => const SplashScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.login,
            page: () => const LoginScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.emailForgotPassword,
            page: () => const EmailForgotPassword(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.phoneForgotPassword,
            page: () => const PhoneForgotPassword(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
      ];
}
