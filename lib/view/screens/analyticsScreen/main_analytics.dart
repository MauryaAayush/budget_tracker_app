import 'package:budget_tracker_app/utils/global_variable.dart';
import 'package:budget_tracker_app/view/screens/analyticsScreen/analytic_2.dart';
import 'package:budget_tracker_app/view/screens/analyticsScreen/analytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../utils/color.dart';

class MainAnalytics extends StatefulWidget {
  const MainAnalytics({super.key});

  @override
  State<MainAnalytics> createState() => _MainAnalyticsState();
}

class _MainAnalyticsState extends State<MainAnalytics> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Backgruond,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 15),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Analysis',
                  style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w500, color: text),
                ),
                Spacer(),
                Icon(
                  Icons.download,
                  color: text,
                )
              ],
            ),
            SizedBox(
              height: height / 90,
            ),
            Container(
              height: height / 20,
              width: width,
              decoration: BoxDecoration(
                color: boder,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  children: [
                    Text(
                      'Week',
                      style: TextStyle(fontSize: 16, color: text),
                    ),
                    SizedBox(
                      width: width / 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: VerticalDivider(
                        width: 1,
                        thickness: 2,
                      ),
                    ),
                    SizedBox(
                      width: width / 30,
                    ),
                    Text(
                      'Month',
                      style: TextStyle(fontSize: 16, color: text),
                    ),
                    SizedBox(
                      width: width / 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: VerticalDivider(
                        width: 1,
                        thickness: 2,
                      ),
                    ),
                    SizedBox(
                      width: width / 30,
                    ),
                    Text(
                      'Year',
                      style: TextStyle(fontSize: 16, color: text),
                    ),
                    SizedBox(
                      width: width / 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: VerticalDivider(
                        width: 1,
                        thickness: 2,
                      ),
                    ),
                    SizedBox(
                      width: width / 30,
                    ),
                    Text(
                      'Custom',
                      style: TextStyle(fontSize: 16, color: text),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height / 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {
                  setState(() {
                    (analyticsIndexedStack == 1)
                        ? analyticsIndexedStack = 0
                        : null;
                  });
                },icon: Icon(Icons.arrow_back_ios)),
                Text(
                  (analyticsIndexedStack == 0) ? 'April 2024' : 'May 2024',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        (analyticsIndexedStack == 0)
                            ? analyticsIndexedStack = 1
                            : null;
                      });
                    },
                    icon: Icon(Icons.arrow_forward_ios)),
              ],
            ),
            Container(
              height: height / 1.5,
              child: IndexedStack(
                index: analyticsIndexedStack,
                children: [
                  Analytics2(),
                  AnalyticsScreen(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
