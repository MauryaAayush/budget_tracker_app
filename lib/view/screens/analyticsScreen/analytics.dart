import 'package:budget_tracker_app/utils/color.dart';
import 'package:flutter/material.dart';

import '../../../utils/global_variable.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({super.key});

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
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
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: text),
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
                      style: TextStyle(fontSize: 16,color: text),
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
                      style: TextStyle(fontSize: 16,color: text),
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
                      style: TextStyle(fontSize: 16,color: text),
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
                      style: TextStyle(fontSize: 16,color: text),
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
                InkWell(
                  onTap: () {
                    setState(() {
                      // analtic = false;
                      Navigator.pushNamed(context, '/analytics2');
                    });
                  },
                    child: Icon(Icons.arrow_back_ios,color: text,)),
                Text(
                  'May 2024',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,color: text),
                ),
                Icon(Icons.arrow_forward_ios,color: text,),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 170),
              height: height / 5,
              width: width / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/transaction.png'),
                ),
              ),
            ),
            SizedBox(
              height: height / 35,
            ),
            Text(
              'No transactions',
              style: TextStyle(fontSize: 18,color: text),
            ),
          ],
        ),
      ),
    );
  }
}
