import 'package:budget_tracker_app/view/screens/SplashScreen/splash.dart';
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
      routes:{
        '/':(context) => SplashScreen(),
        '/signUp':(context) =>
      },
    );
  }
}

