import 'package:budget_tracker_app/view/screens/log_in/login.dart';
import 'package:flutter/material.dart';

import '../../../utils/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    DateTime dateTime = DateTime.now();

    return Scaffold(
      backgroundColor: Colors.white,
       bottomNavigationBar: bottem_navigation_bar(),



      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 38, 10, 0),
                  height: height * 0.08,
                  width: width * 0.918,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 27,
                      ),

                      // here we have written the text of 👋 and AM
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            (dateTime.hour >= 0 && dateTime.hour < 12)
                                ? '  Good Morning 👋'
                                : (dateTime.hour >= 12 && dateTime.hour < 17)
                                    ? '  Good Afternoon 👋'
                                    : '  Good evening 👋',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            textName.text,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          )
                        ],
                      ),

                      const SizedBox(
                        width: 70,
                      ),

                      const Icon(
                        Icons.notifications_none_outlined,
                        size: 26,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: height * 0.05,
              width: width,
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'This month',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 17.5),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 27,
                      ))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Red button
                InkWell(
                  onTap: () {

                  },
                  child: Container(
                    height: height * 0.07,
                    width: width * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(35)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white54,
                          child: Icon(
                            Icons.arrow_upward,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5,),
                            Text(
                              'Spending',
                              style: TextStyle(color: Colors.white54,
                              fontSize: 16,
                              ),
                            ),
                            Text(
                              '\$0.00',
                              style: TextStyle(color: Colors.white,
                              fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                // green button
                InkWell(
                  onTap: () {

                  },
                  child: Container(
                    height: height * 0.07,
                    width: width * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(35)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white54,
                          child: Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5,),
                            Text(
                              'Income',
                              style: TextStyle(color: Colors.white54,
                              fontSize: 16,
                              ),
                            ),
                            Text(
                              '\$0.00',
                              style: TextStyle(color: Colors.white,
                              fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 15,),
            //Balance button
            Container(
              height: height*0.04,
              width: width*0.4,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(30),
               color: Colors.black12
             ),child: Center(child: Text('Balance: \$0.00',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500
            ),)),
            ),
            Row(
              children: [
                Text('Recent transactions',style: TextStyle(
                  fontWeight: FontWeight.w500
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }

  Container bottem_navigation_bar() {
    return Container(
      height :120,
      width :500,
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
                    color: (dark)?Colors.white:Colors.black,
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
                            accounttoch=false;
                            moretoch=false;
                            analytoch = false;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home_rounded,size: 30,color: (hometoch)?(dark)?Colors.black:Colors.white:Colors.grey,),
                            Text('Home',style: TextStyle(color: (hometoch)?text:Colors.grey),),
                          ],
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            analytoch = true;
                            hometoch=false;
                             accounttoch=false;
                             moretoch=false;

                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.bar_chart_outlined,size: 35,color: (analytoch)?(dark)?Colors.black:Colors.white:Colors.grey),
                            Text('Analysis',style: TextStyle(color: (analytoch)?text:Colors.grey),),
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
                            hometoch=false;
                            moretoch=false;

                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home_work_outlined,size: 35,color: (accounttoch)?(dark)?Colors.black:Colors.white:Colors.grey),
                            Text('Accounts',style: TextStyle(color: (accounttoch)?text:Colors.grey),),
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
                            hometoch=false;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.more_horiz_outlined,size: 35,color: (moretoch)?(dark)?Colors.black:Colors.white:Colors.grey),
                            Text('More',style: TextStyle(color: (moretoch)?text:Colors.grey)),
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
                    offset: Offset(0,1),
                    spreadRadius: 0.5,
                    blurRadius: 1,
                    color: Colors.white,
                  )
                ],

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(175,35,40, 0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/analytics');
              },
              child: Container(
                height: 63,
                width: 63,
                decoration: BoxDecoration(
                  color: (dark)?Colors.black:Colors.white,
                  shape: BoxShape.circle
                  ,boxShadow: [
                  BoxShadow(
                    offset: Offset(0,1.5),
                    spreadRadius: 0.5,
                    blurRadius: 2,
                    color: Colors.black54,
                  )
                ],
                ),
                child: Center(
                  child: Icon(Icons.add,color: (dark)?Colors.white:Colors.black,size: 40,),
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
