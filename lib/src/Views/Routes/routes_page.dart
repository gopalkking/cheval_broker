import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Screens/Booking/booking_enquires_view.dart';
import 'package:cheval_broker/src/Views/Screens/Booking/booking_full_view.dart';
import 'package:cheval_broker/src/Views/Screens/Booking/booking_view.dart';
import 'package:cheval_broker/src/Views/Screens/Driver%20List/driver_list_full_view.dart';
import 'package:cheval_broker/src/Views/Screens/Home/daily_availability.dart';
import 'package:cheval_broker/src/Views/Screens/Home/navigator.dart';
import 'package:cheval_broker/src/Views/Screens/Home/new_enquiries.dart';
import 'package:cheval_broker/src/Views/Screens/Home/recent_bookings.dart';
import 'package:cheval_broker/src/Views/Screens/Onboard/Forgot_passoword/check_email.dart';
import 'package:cheval_broker/src/Views/Screens/Onboard/Forgot_passoword/email_forgot_password.dart';
import 'package:cheval_broker/src/Views/Screens/Onboard/Forgot_passoword/forgot_password_otp.dart';
import 'package:cheval_broker/src/Views/Screens/Onboard/Forgot_passoword/password_changed.dart';
import 'package:cheval_broker/src/Views/Screens/Onboard/Forgot_passoword/phone_forgot_password.dart';
import 'package:cheval_broker/src/Views/Screens/Onboard/Forgot_passoword/reset_password.dart';
import 'package:cheval_broker/src/Views/Screens/Onboard/login_screen.dart';
import 'package:cheval_broker/src/Views/Screens/Onboard/signup_screen.dart';
import 'package:cheval_broker/src/Views/Screens/Onboard/splash_screen.dart';
import 'package:cheval_broker/src/Views/Screens/Vechicle%20List/vechicle_list_full_view.dart';
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
            GetPage(
            name: Appnames.forgotPasswordOTP,
            page: () => const ForgotPasswordOtp(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.checkEmail,
            page: () => const CheckEmail(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.resetPassword,
            page: () => const ResetPassword(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.passwordChanged,
            page: () => const PasswordChanged(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.signup,
            page: () => const SignupScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.navigator,
            page: () =>  NavigatorScreen(index: 0),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.dailyAvailability,
            page: () =>  const DailyAvailability(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.newEnquiries,
            page: () =>  const NewEnquiries(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.recentBookings,
            page: () =>  const RecentBookings(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.bookingEnquiresView,
            page: () =>  const BookingEnquiresView(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.bookingView,
            page: () =>  const BookingView(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.bookingFullView,
            page: () =>  const BookingFullView(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.vechicleListFullView,
            page: () =>  const VechicleListFullView(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.driverListFullView,
            page: () =>  const DriverListFullView(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
      ];
}
