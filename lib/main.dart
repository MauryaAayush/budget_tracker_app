import 'package:budget_tracker_app/utils/color.dart';
import 'package:budget_tracker_app/view/screens/About/about.dart';
import 'package:budget_tracker_app/view/screens/Account/Account.dart';
import 'package:budget_tracker_app/view/screens/Add_Transaction/Add-transaction.dart';
import 'package:budget_tracker_app/view/screens/Add_budget/AddBudget.dart';
import 'package:budget_tracker_app/view/screens/Refrencial/refrence1.dart';
import 'package:budget_tracker_app/view/screens/Setting/setting.dart';
import 'package:budget_tracker_app/view/screens/SplashScreen/intro_get_start.dart';
import 'package:budget_tracker_app/view/screens/SplashScreen/introprivacy.dart';
import 'package:budget_tracker_app/view/screens/SplashScreen/splash.dart';
import 'package:budget_tracker_app/view/screens/SplashScreen/splash4.dart';
import 'package:budget_tracker_app/view/screens/analyticsScreen/analytic_2.dart';
import 'package:budget_tracker_app/view/screens/analyticsScreen/analytics.dart';
import 'package:budget_tracker_app/view/screens/bottem_navigation_bar/bottem.dart';
import 'package:budget_tracker_app/view/screens/currency/currencyScreen.dart';
import 'package:budget_tracker_app/view/screens/homeScreen/home.dart';
import 'package:budget_tracker_app/view/screens/homeScreen/providers/homeProvider.dart';
import 'package:budget_tracker_app/view/screens/log_in/login.dart';
import 'package:budget_tracker_app/view/screens/moreScreen/Transaction.dart';
import 'package:budget_tracker_app/view/screens/moreScreen/budget.dart';
import 'package:budget_tracker_app/view/screens/moreScreen/categories.dart';
import 'package:budget_tracker_app/view/screens/moreScreen/more.dart';
import 'package:budget_tracker_app/view/screens/moreScreen/reminder.dart';
import 'package:budget_tracker_app/view/screens/moreScreen/tags.dart';
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
          '/': (context) =>  SplashScreen(),
          '/signUp': (context) =>  SignUp(),
          '/login': (context) =>  LogIn(),
          '/bottem': (context) => BottemScreen(),
          '/home': (context) => HomeScreen(),
          '/analytics': (context) =>  AnalyticsScreen(),
          '/account': (context) =>  Account(),
          '/more': (context) =>  MoreScreen(),
          '/about': (context) =>  AboutApp(),
          '/add': (context) =>  AddTransaction(),
          '/setting': (context) => Setting(),
          '/analytics2': (context) =>  Analytics2(),
          '/Referrals': (context) =>  Referrals(),
          '/Splash': (context) =>  Splash(),
          '/reminder': (context) =>  Reminder(),
          '/cat': (context) =>  Categories(),
          '/privacy': (context) =>  Privacy(),
          '/getstarted': (context) =>  Get_started(),
          '/transationa': (context) =>  Transationa(),
          '/budgets': (context) => Budgets(),
          '/tags': (context) =>  Tags(),
          '/AddBudget': (context) =>  AddBudget(),
          '/currency': (context) =>  Currency(),
        },
      ),
    );
  }
}
