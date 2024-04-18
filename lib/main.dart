import 'package:budget_tracker_app/utils/color.dart';
import 'package:budget_tracker_app/view/screens/About/about.dart';
import 'package:budget_tracker_app/view/screens/Account/Account.dart';
import 'package:budget_tracker_app/view/screens/Add_Transaction/Add-transaction.dart';
import 'package:budget_tracker_app/view/screens/Setting/setting.dart';
import 'package:budget_tracker_app/view/screens/SplashScreen/splash.dart';
import 'package:budget_tracker_app/view/screens/analyticsScreen/analytic_2.dart';
import 'package:budget_tracker_app/view/screens/analyticsScreen/analytics.dart';
import 'package:budget_tracker_app/view/screens/bottem_navigation_bar/bottem.dart';
import 'package:budget_tracker_app/view/screens/homeScreen/home.dart';
import 'package:budget_tracker_app/view/screens/homeScreen/providers/homeProvider.dart';
import 'package:budget_tracker_app/view/screens/log_in/login.dart';
import 'package:budget_tracker_app/view/screens/moreScreen/more.dart';
import 'package:budget_tracker_app/view/screens/sign_up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: (dark) ? Colors.white : Colors.black));
  runApp(const BudgetTracker());
}

class BudgetTracker extends StatelessWidget {
  const BudgetTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/bottem',
        routes: {
          '/': (context) => const SplashScreen(),
          '/signUp': (context) => const SignUp(),
          '/login': (context) => const LogIn(),
          '/bottem': (context) => const bottemscreen(),
          '/home': (context) => const HomeScreen(),
          '/analytics': (context) => const AnalyticsScreen(),
          '/account': (context) => const Account(),
          '/more': (context) => const MoreScreen(),
          '/about': (context) => const AboutApp(),
          '/add': (context) => const AddTransaction(),
          '/setting': (context) => const Setting(),
          '/analytics2': (context) => const Analytics2(),
        },
      ),
    );
  }
}
