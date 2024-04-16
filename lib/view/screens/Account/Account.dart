import 'package:flutter/material.dart';

import '../../../utils/color.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: bottemnavigationbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Accounts",
                  style: TextStyle(
                      fontSize: height * 0.024, fontWeight: FontWeight.w700),
                ),
                Text(
                  "+ Add account",
                  style: TextStyle(
                      fontSize: height * 0.019, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transactions based balance,actual may vary.",
                  style: TextStyle(
                      fontSize: height * 0.013, color: Colors.black45),
                ),
                Text(
                  "Show balance",
                  style: TextStyle(
                      fontSize: height * 0.013, color: Colors.black45),
                ),
                Switch(
                  value: false,
                  onChanged: (value) {},
                )
              ],
            ),
            SizedBox(height: height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: height * 0.1,
                  width: width * 0.43,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(2, 4),
                            blurRadius: 10,
                            spreadRadius: 2)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Available Balance",
                          style: TextStyle(
                            fontSize: height * 0.017,
                          ),
                        ),
                        Text(
                          "*****",
                          style: TextStyle(
                              fontSize: height * 0.025,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: height * 0.1,
                  width: width * 0.43,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(2, 4),
                            blurRadius: 10,
                            spreadRadius: 2)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Available Credit",
                          style: TextStyle(
                            fontSize: height * 0.017,
                          ),
                        ),
                        Text(
                          "*****",
                          style: TextStyle(
                              fontSize: height * 0.025,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: height * 0.04),
            Row(
              children: [
                Icon(
                  Icons.account_balance,
                  color: Colors.lightBlueAccent.shade200,
                ),
                SizedBox(width: width * 0.04),
                Text(
                  "Bank Accounts",
                  style: TextStyle(
                      fontSize: height * 0.018, color: Colors.black54),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Card(
              child: ListTile(
                title: Text(
                  "Bank Account",
                  style: TextStyle(fontSize: height * 0.02),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "*****",
                      style: TextStyle(
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                    SizedBox(width: width*0.02),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            Row(
              children: [
                Icon(
                  Icons.payments,
                  color: Colors.green.shade400,
                ),
                SizedBox(width: width * 0.04),
                Text(
                  "Cash",
                  style: TextStyle(
                      fontSize: height * 0.018, color: Colors.black54),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Card(
              child: ListTile(
                title: Text(
                  "Cash",
                  style: TextStyle(fontSize: height * 0.02),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "*****",
                      style: TextStyle(
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                    SizedBox(width: width*0.02),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),
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