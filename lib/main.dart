import 'package:budget_tracker_app/view/screens/SplashScreen/splash.dart';
import 'package:budget_tracker_app/view/screens/analyticsScreen/analytics.dart';
import 'package:budget_tracker_app/view/screens/homeScreen/home.dart';
import 'package:budget_tracker_app/view/screens/log_in/login.dart';
import 'package:budget_tracker_app/view/screens/otpscreen/otp_screen.dart';
import 'package:budget_tracker_app/view/screens/sign_up/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BudgetTracker());
}

class BudgetTracker extends StatelessWidget {
  const BudgetTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/otp',
      routes: {
        '/': (context) => const SplashScreen(),
        '/signUp': (context) => const SignUp(),
        '/login': (context) => const LogIn(),
        '/otp' : (context) => const OTPScreen(),
        '/home': (context) => const HomeScreen(),
        '/analytics': (context) => const AnalyticsScreen(),
      },
    );
  }
}
