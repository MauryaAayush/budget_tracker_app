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
    return Scaffold(
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
                      color: Colors.black),
                ),
                Spacer(),
                Icon(Icons.download,color: Colors.black,)
              ],
            ),
            SizedBox(height: height/90,),
            Container(
              height: height/20,
              width: width,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Text('Week',style: TextStyle(fontSize: 18),),
                    VerticalDivider()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
