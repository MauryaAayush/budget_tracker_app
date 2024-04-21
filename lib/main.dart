import 'package:budget_tracker_app/utils/color.dart';
import 'package:budget_tracker_app/view/screens/About/about.dart';
import 'package:budget_tracker_app/view/screens/Account/Account.dart';
import 'package:budget_tracker_app/view/screens/Add_Transaction/Add-transaction.dart';
import 'package:budget_tracker_app/view/screens/Add_budget/AddBudget.dart';
import 'package:budget_tracker_app/view/screens/Refrencial/refrence1.dart';
import 'package:budget_tracker_app/view/screens/Setting/setting.dart';
import 'package:budget_tracker_app/view/screens/SplashScreen/intro_get_start.dart';
import 'package:budget_tracker_app/view/screens/SplashScreen/introprivacy.dart';
import 'package:budget_tracker_app/view/screens/SplashScreen/introsave.dart';
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
      statusBarColor: (dark) ? Backgruond : Colors.black));
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
        initialRoute: '/about',
        routes: {
          // '/': (context) =>  const SplashScreen(),
          // '/s1': (context) =>  const Get_started(),
          // '/s2': (context) =>  const Privacy(),
          // '/s3': (context) =>  const Saving(),
          // '/s4': (context) =>  const Splash(),
          // '/signUp': (context) =>  const SignUp(),
          // '/login': (context) =>  const LogIn(),
          '/bottem': (context) => const BottemScreen(),
          '/home': (context) => const HomeScreen(),
          '/analytics': (context) =>  const AnalyticsScreen(),
          '/account': (context) =>  const Account(),
          '/more': (context) =>  const MoreScreen(),
          '/about': (context) =>  const AboutApp(),
          '/add': (context) =>  const AddTransaction(),
          '/setting': (context) => const Setting(),
          '/analytics2': (context) =>  const Analytics2(),
          '/Referrals': (context) =>  const Referrals(),
          '/Splash': (context) =>  const Splash(),
          '/reminder': (context) =>  const Reminder(),
          '/cat': (context) =>  const Categories(),
          '/privacy': (context) =>  const Privacy(),
          '/getstarted': (context) =>  const Get_started(),
          '/transationa': (context) =>  const Transationa(),
          '/budgets': (context) => const Budgets(),
          '/tags': (context) =>  const Tags(),
          '/AddBudget': (context) =>  const AddBudget(),
          '/currency': (context) =>  const Currency(),
        },
      ),
    );
  }
}
