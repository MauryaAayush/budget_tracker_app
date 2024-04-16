import 'package:budget_tracker_app/view/screens/About/about.dart';
import 'package:budget_tracker_app/view/screens/Account/Account.dart';
import 'package:budget_tracker_app/view/screens/Add_Transaction/Add-transaction.dart';
import 'package:budget_tracker_app/view/screens/SplashScreen/splash.dart';
import 'package:budget_tracker_app/view/screens/analyticsScreen/analytics.dart';

import 'package:budget_tracker_app/view/screens/homeScreen/home.dart';
import 'package:budget_tracker_app/view/screens/log_in/login.dart';
import 'package:budget_tracker_app/view/screens/moreScreen/more.dart';
import 'package:budget_tracker_app/view/screens/sign_up/sign_up.dart';
import 'package:flutter/material.dart';

//darshan patel
void main() {
  runApp(const BudgetTracker());
}

class BudgetTracker extends StatelessWidget {
  const BudgetTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/': (context) => const SplashScreen(),
        '/signUp': (context) => const SignUp(),
        '/login': (context) => const LogIn(),
        '/home': (context) => const HomeScreen(),
        '/analytics': (context) => const AnalyticsScreen(),
        '/account' : (context) => const Account(),
        '/more' : (context) => const MoreScreen(),
        '/about' : (context) => const AboutApp(),
        '/add' : (context) => const AddTransaction(),
      },
    );
  }
}
