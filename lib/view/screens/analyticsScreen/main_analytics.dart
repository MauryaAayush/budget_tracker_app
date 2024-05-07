import 'package:budget_tracker_app/utils/Globla_methods.dart';
import 'package:budget_tracker_app/utils/global_variable.dart';
import 'package:budget_tracker_app/view/screens/analyticsScreen/analytic_2.dart';
import 'package:budget_tracker_app/view/screens/analyticsScreen/analytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../utils/color.dart';
import '../pdf/pdfScreen.dart';

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
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => PdfScreen()));
                  },
                  icon: Icon(
                    Icons.download,
                    color: text,
                  ),
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
                padding: EdgeInsets.symmetric(horizontal: width * 0.015),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          weekMonthYear = 0;
                        });
                      },
                      child: Container(
                        height: height / 28,
                        width: width / 7,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: (weekMonthYear == 0) ? Colors.white54 : null,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          'Week',
                          style: TextStyle(fontSize: 16, color: text),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4.0, vertical: 4),
                      child: VerticalDivider(
                        width: 1,
                        thickness: 2,
                      ),
                    ),
                    SizedBox(
                      width: width / 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          weekMonthYear = 1;
                        });
                      },
                      child: Container(
                        height: height / 28,
                        width: width / 7,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: (weekMonthYear == 1) ? Colors.white54 : null,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          'Month',
                          style: TextStyle(fontSize: 16, color: text),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4.0, vertical: 4),
                      child: VerticalDivider(
                        width: 1,
                        thickness: 2,
                      ),
                    ),
                    SizedBox(
                      width: width / 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          weekMonthYear = 2;
                        });
                      },
                      child: Container(
                        height: height / 28,
                        width: width / 7,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: (weekMonthYear == 2) ? Colors.white54 : null,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          'Year',
                          style: TextStyle(fontSize: 16, color: text),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4.0, vertical: 4),
                      child: VerticalDivider(
                        width: 1,
                        thickness: 2,
                      ),
                    ),
                    SizedBox(
                      width: width / 30,
                    ),
                    InkWell(
                      onTap: () {
                        Premium_lelo(context, height, width);
                      },
                      child: Text(
                        'Custom',
                        style: TextStyle(fontSize: 16, color: text),
                      ),
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
                IconButton(
                    onPressed: () {
                      setState(() {
                        (analyticsIndexedStack == 1)
                            ? analyticsIndexedStack = 0
                            : null;
                      });
                    },
                    icon: Icon(Icons.arrow_back_ios),color: text,),
                Text(
                  (weekMonthYear == 1)
                      ? (analyticsIndexedStack == 0)
                          ? 'April 2024'
                          : 'May 2024'
                      : (weekMonthYear == 0)
                          ? (analyticsIndexedStack == 0)
                              ? '1-7 April'
                              : '8-14 April'
                          : (weekMonthYear == 2)
                              ? (analyticsIndexedStack == 0)
                                  ? '2024'
                                  : '2025'
                              : "",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: text),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        (analyticsIndexedStack == 0)
                            ? analyticsIndexedStack = 1
                            : null;
                      });
                    },
                    icon: Icon(Icons.arrow_forward_ios),color: text,),
              ],
            ),
            Expanded(
              child: Container(
                // height: height / 1.5,
                child: IndexedStack(
                  index: analyticsIndexedStack,
                  children: [
                    Analytics2(),
                    AnalyticsScreen(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
