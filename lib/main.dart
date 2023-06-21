import 'package:accountsntax/screens/change_password.dart';
import 'package:accountsntax/screens/otp_screen.dart';
import 'package:accountsntax/screens/splash_screen.dart';
import 'package:accountsntax/widgets/notification_page.dart';
import 'package:flutter/material.dart';
import 'package:accountsntax/utils/routes.dart';
import 'package:accountsntax/utils/theme.dart';
import 'package:accountsntax/screens/intro_screen.dart';
import 'package:accountsntax/screens/login_screen.dart';
import 'package:accountsntax/screens/signup_screen.dart';
import 'package:accountsntax/screens/dashboard_screen.dart';

void main() {
  runApp(const AccountsntaxApp());
}

class AccountsntaxApp extends StatelessWidget {
  const AccountsntaxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Accountsntax',
      theme: buildThemeData(),
      initialRoute: splashRoute,
      debugShowCheckedModeBanner: false,
      routes: {
        splashRoute: (context) => const SplashScreen(),
       introRoute: (context) => const IntroScreen(),
        loginRoute: (context) => const LoginScreen(),
        signupRoute: (context) => const SignUpScreen(),
        dashboardRoute: (context) => DashboardScreen(),
        otpRoute: (context) => const OTPScreen(),
        notificationRoute: (context) => const NotificationPage(),
      changePasswordRoute: (context) => const ChangePasswordScreen(),
      },
    );
  }
}
