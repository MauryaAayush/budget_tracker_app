import 'package:flutter/material.dart';

import '../../../utils/color.dart';

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
      bottomNavigationBar: bottemnavigationbar(),
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
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  children: [
                    Text('Week',style: TextStyle(fontSize: 16),),
                    SizedBox(width: width/25,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: VerticalDivider(width: 1,thickness: 2,),
                    ),
                    SizedBox(width: width/30,),
                    Text('Month',style: TextStyle(fontSize: 16),),
                    SizedBox(width: width/25,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: VerticalDivider(width: 1,thickness: 2,),
                    ),
                    SizedBox(width: width/30,),
                    Text('Year',style: TextStyle(fontSize: 16),),
                    SizedBox(width: width/25,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: VerticalDivider(width: 1,thickness: 2,),
                    ),
                    SizedBox(width: width/30,),
                    Text('Custom',style: TextStyle(fontSize: 16),),
                  ],
                ),
              ),
            ),
            SizedBox(height: height/30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios),
                Text('22 Apr - 28 Apr',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 170),
              height: height / 5,
              width: width/3,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/img/transaction.png'),),
              ),
            ),
            SizedBox(height: height/35,),
            Text('No transactions',style: TextStyle(fontSize: 18),),
          ],
        ),
      ),
    );
  }
  Container bottemnavigationbar() {
    return Container(
      height: 120,
      width: 500,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
            child: Stack(
              children: [
                Container(
                  height: 60,
                  width: 450,
                  decoration: BoxDecoration(
                    color: (dark) ? Colors.white : Colors.black,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            hometoch = true;
                            accounttoch = false;
                            moretoch = false;
                            analytoch = false;
                            Navigator.pushNamed(context, '/home');
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home_rounded, size: 30,
                              color: (hometoch) ? (dark) ? Colors.black : Colors
                                  .white : Colors.grey,),
                            Text('Home', style: TextStyle(
                                color: (hometoch) ? text : Colors.grey),),
                          ],
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            analytoch = true;
                            hometoch = false;
                            accounttoch = false;
                            moretoch = false;
                            Navigator.pushNamed(context, '/analytics');
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.bar_chart_outlined, size: 35,
                                color: (analytoch) ? (dark)
                                    ? Colors.black
                                    : Colors.white : Colors.grey),
                            Text('Analysis', style: TextStyle(
                                color: (analytoch) ? text : Colors.grey),),
                          ],
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 25,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            accounttoch = true;
                            analytoch = false;
                            hometoch = false;
                            moretoch = false;
                            Navigator.pushNamed(context, '/account');
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home_work_outlined, size: 35,
                                color: (accounttoch) ? (dark)
                                    ? Colors.black
                                    : Colors.white : Colors.grey),
                            Text('Accounts', style: TextStyle(
                                color: (accounttoch) ? text : Colors.grey),),
                          ],
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            moretoch = true;
                            accounttoch = false;
                            analytoch = false;
                            hometoch = false;
                            Navigator.pushNamed(context, '/more');
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.more_horiz_outlined, size: 35,
                                color: (moretoch) ? (dark)
                                    ? Colors.black
                                    : Colors.white : Colors.grey),
                            Text('More', style: TextStyle(
                                color: (moretoch) ? text : Colors.grey)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(170, 30, 10, 0),
            child: Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                color: Color(0xffF0F1F3),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    spreadRadius: 0.5,
                    blurRadius: 1,
                    color: Colors.white,
                  )
                ],

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(175, 35, 40, 0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/analytics');
              },
              child: Container(
                height: 63,
                width: 63,
                decoration: BoxDecoration(
                  color: (dark) ? Colors.black : Colors.white,
                  shape: BoxShape.circle
                  , boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1.5),
                    spreadRadius: 0.5,
                    blurRadius: 2,
                    color: Colors.black54,
                  )
                ],
                ),
                child: Center(
                  child: Icon(
                    Icons.add, color: (dark) ? Colors.white : Colors.black,
                    size: 40,),
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}