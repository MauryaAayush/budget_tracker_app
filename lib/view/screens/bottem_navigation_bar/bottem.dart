import 'package:budget_tracker_app/view/screens/analyticsScreen/main_analytics.dart';
import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import '../../../utils/color.dart';
import '../Account/Account.dart';
import '../homeScreen/home.dart';
import '../moreScreen/more.dart';

class BottemScreen extends StatefulWidget {
  const BottemScreen({super.key});

  @override
  State<BottemScreen> createState() => SectionState();
}

class SectionState extends State<BottemScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavBar(
          actionButton: CurvedActionBar(
              onTab: (value) {
                /// perform action here
                print(value);
              },
              activeIcon: InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xff6b58b1), shape: BoxShape.circle),
                  child: Icon(
                    Icons.downloading_sharp,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
              inActiveIcon: InkWell(
                onTap: () {
                  // TextEditingController tempExpense = TextEditingController();
                  // TextEditingController tempIncome = TextEditingController();

                  // transactionExpense['amount'] = int.parse(txtAmountExpense.text);
                  // transactionIncome['amount'] = int.parse(txtAmountIncome.text);

                  Navigator.pushNamed(context, '/add');
                },
                child: Container(
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                      color: (dark) ? Colors.black : Colors.white,
                      shape: BoxShape.circle),
                  child: Icon(
                    Icons.add,
                    size: 30,
                    color: (dark) ? Colors.white : Colors.black,
                  ),
                ),
              ),
              text: ''),
          activeColor: text,
          navBarBackgroundColor: Backgruond,
          inActiveColor: Colors.black45,
          appBarItems: [
            FABBottomAppBarItem(
                activeIcon: Icon(
                  Icons.home,
                  color: (dark) ? Colors.black : Colors.white,
                ),
                inActiveIcon: Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                text: 'Home'),
            FABBottomAppBarItem(
                activeIcon: Icon(
                  Icons.bar_chart_rounded,
                  color: text,
                ),
                inActiveIcon: Icon(
                  Icons.bar_chart_rounded,
                  color: Colors.grey,
                ),
                text: 'Analysis'),
            FABBottomAppBarItem(
                activeIcon: Icon(
                  Icons.home_work_rounded,
                  color: (dark) ? Colors.black : Colors.white,
                ),
                inActiveIcon: Icon(
                  Icons.home_work_rounded,
                  color: Colors.grey,
                ),
                text: 'Accounts'),
            FABBottomAppBarItem(
                activeIcon: Icon(
                  Icons.more_horiz_outlined,
                  color: (dark) ? Colors.black : Colors.white,
                ),
                inActiveIcon: Icon(
                  Icons.more_horiz_outlined,
                  color: Colors.grey,
                ),
                text: 'More'),
          ],
          bodyItems: [
            HomeScreen(),
            MainAnalytics(),
            Account(),
            MoreScreen(),
          ],
          // actionBarView :AddTransaction(),
        ),
      ),
    );
  }
}
