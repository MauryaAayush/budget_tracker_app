import 'package:budget_tracker_app/utils/color.dart';
import 'package:flutter/material.dart';

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
    return Center(
      child: Column(
        children: [
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
            style: TextStyle(fontSize: 18, color: text),
          ),
        ],
      ),
    );
  }
}
