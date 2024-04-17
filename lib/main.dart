import 'package:budget_tracker_app/view/screens/SplashScreen/introprivacyscreen.dart';
import 'package:budget_tracker_app/view/screens/SplashScreen/introsaving.dart';
import 'package:budget_tracker_app/view/screens/SplashScreen/splash.dart';
import 'package:budget_tracker_app/view/screens/add_transaction_screen/add_transaction.dart';
import 'package:budget_tracker_app/view/screens/analyticsScreen/analytics.dart';
import 'package:budget_tracker_app/view/screens/homeScreen/home.dart';
import 'package:budget_tracker_app/view/screens/log_in/login.dart';
import 'package:budget_tracker_app/view/screens/moreScreen/categories.dart';
import 'package:budget_tracker_app/view/screens/moreScreen/reminderscreen.dart';
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
      initialRoute: '/save',
      routes: {
        '/': (context) => const SplashScreen(),
        '/signUp': (context) => const SignUp(),
        '/login': (context) => const LogIn(),
        '/otp' : (context) => const OTPScreen(),
        '/home': (context) => const HomeScreen(),
        '/analytics': (context) => const AnalyticsScreen(),
        '/add' : (context) => const AddTransaction(),
        '/reminder' : (context) => const Reminder(),
        '/cat' : (context) => const Categories(),
        '/privacy' : (context) => const Privacy(),
        '/save' : (context) => const Saving(),
      },
    );
  }
}
