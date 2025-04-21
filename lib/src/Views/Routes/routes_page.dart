import 'package:cheval_broker/src/Views/Routes/routes_name.dart';
import 'package:cheval_broker/src/Views/Screens/Booking/booking_enquires_view.dart';
import 'package:cheval_broker/src/Views/Screens/Booking/booking_full_view.dart';
import 'package:cheval_broker/src/Views/Screens/Booking/booking_view.dart';
import 'package:cheval_broker/src/Views/Screens/Booking/consignment_screen.dart';
import 'package:cheval_broker/src/Views/Screens/Drawer/Help%20Support/help_support.dart';
import 'package:cheval_broker/src/Views/Screens/Drawer/Invoice%20&%20Payments/invoice_payments.dart';
import 'package:cheval_broker/src/Views/Screens/Drawer/Invoice%20&%20Payments/invoice_screen.dart';
import 'package:cheval_broker/src/Views/Screens/Drawer/Report%20Analytics/report_analytics_tabs.dart';
import 'package:cheval_broker/src/Views/Screens/Drawer/Report%20Analytics/report_full_view.dart';
import 'package:cheval_broker/src/Views/Screens/Drawer/Settings/add_user.dart';
import 'package:cheval_broker/src/Views/Screens/Drawer/Settings/roles_screen.dart';
import 'package:cheval_broker/src/Views/Screens/Drawer/Settings/settings.dart';
import 'package:cheval_broker/src/Views/Screens/Drawer/Subscription/current_subscribe.dart';
import 'package:cheval_broker/src/Views/Screens/Drawer/Subscription/subscribe_screen.dart';
import 'package:cheval_broker/src/Views/Screens/Driver%20List/driver_list_full_view.dart';
import 'package:cheval_broker/src/Views/Screens/Home/daily_availability.dart';
import 'package:cheval_broker/src/Views/Screens/Home/navigator.dart';
import 'package:cheval_broker/src/Views/Screens/Home/new_enquiries.dart';
import 'package:cheval_broker/src/Views/Screens/Home/notification_screen.dart';
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
            GetPage(
            name: Appnames.reportAnalyticsTabs,
            page: () =>  const ReportAnalyticsTabs(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.reportFullView,
            page: () =>  const ReportFullView(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.helpSupport,
            page: () =>  const HelpSupport(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.settings,
            page: () =>  const Settings(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.rolesScreen,
            page: () =>  const RolesScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.addUser,
            page: () =>  const AddUser(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.notification,
            page: () =>  const NotificationScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.subscribeNow,
            page: () =>  const SubscribeScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.currentSubscribe,
            page: () =>  const CurrentSubscribe(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.invoicePayments,
            page: () =>  const InvoicePayments(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.invoiceScreen,
            page: () =>  const InvoiceScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.consignmentScreen,
            page: () =>  const ConsignmentNote(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
      ];
}
