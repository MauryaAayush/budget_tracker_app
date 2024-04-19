import 'package:budget_tracker_app/view/screens/SplashScreen/intro_get_started.dart';
import 'package:budget_tracker_app/view/screens/SplashScreen/splash.dart';
import 'package:budget_tracker_app/view/screens/analyticsScreen/analytics.dart';
import 'package:budget_tracker_app/view/screens/analyticsScreen/analytics2.dart';

import 'package:budget_tracker_app/view/screens/homeScreen/home.dart';
import 'package:budget_tracker_app/view/screens/log_in/login.dart';
import 'package:budget_tracker_app/view/screens/moreScreen/budgets.dart';
import 'package:budget_tracker_app/view/screens/moreScreen/tags.dart';
import 'package:budget_tracker_app/view/screens/moreScreen/transationa.dart';
import 'package:budget_tracker_app/view/screens/settingsScreen/setting.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/getstarted': (context) => const Get_started(),
        '/signUp': (context) => const SignUp(),
        '/login': (context) => const LogIn(),
        '/setting': (context) => const Setting(),
        '/home': (context) => const HomeScreen(),
        '/analytics': (context) => const AnalyticsScreen(),
        '/analytics2': (context) => const Analytics2(),
        '/transationa': (context) => const Transationa(),
        '/budgets': (context) => const Budgets(),
        '/tags': (context) => const Tags(),
      },
    );
  }
}
