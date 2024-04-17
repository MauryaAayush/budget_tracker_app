import 'package:budget_tracker_app/view/screens/homeScreen/providers/homeProvider.dart';
import 'package:budget_tracker_app/view/screens/log_in/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvidertrue = Provider.of(context, listen: true);
    HomeProvider homeProviderfalse = Provider.of(context, listen: false);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    DateTime dateTime = DateTime.now();

    return Scaffold(
      backgroundColor: Colors.white,
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
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 27,
                      ),

                      // here we have written the text of 👋 and AM
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                            ),
                          ],
                        ),
                      ),

                      Spacer(),

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
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Red button
                InkWell(
                  onTap: () {},
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
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Spending',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: height / 50,
                              ),
                            ),
                            Text(
                              '\$0.00',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height / 60,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                // green button
                InkWell(
                  onTap: () {},
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
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Income',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: height / 50,
                              ),
                            ),
                            Text(
                              '\$0.00',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height / 60,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            //Balance button
            Container(
              height: height * 0.04,
              width: width * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black12),
              child: Center(
                  child: Text(
                'Balance: \$0.00',
                style: TextStyle(
                    fontSize: height / 50, fontWeight: FontWeight.w500),
              )),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  '  Recent transactions',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                Spacer(),
                Text(
                  'see all   ',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: height / 9,
              width: width / 1.05,
              decoration: BoxDecoration(
                color: Color(0xffE3F5FF),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    color: Colors.black12,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade100,
                    radius: 25,
                    child: Icon(
                      Icons.compare_arrows,
                      size: 40,
                      color: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$580.0',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: height / 55),
                        ),
                        Text(
                          'Not specified',
                          style: TextStyle(
                              color: Colors.grey, fontSize: height / 60),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '16 Apr 24',
                          style: TextStyle(
                              fontSize: height / 65,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Icon(
                          Icons.account_balance,
                          color: Colors.blue,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: height / 9,
              width: width / 1.05,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    color: Colors.black12,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade100,
                    radius: 25,
                    child: Icon(
                      Icons.more_horiz_outlined,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$580.0',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: height / 55),
                        ),
                        Text(
                          'Not specified',
                          style: TextStyle(
                              color: Colors.grey, fontSize: height / 60),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '16 Apr 24',
                          style: TextStyle(
                              fontSize: height / 65,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Icon(
                          Icons.payments_outlined,
                          color: Colors.green,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Container(
              height: height / 9,
              width: width / 1.05,
              decoration: BoxDecoration(
                color: Color(0xffE7F6E9),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    color: Colors.black12,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade100,
                    radius: 25,
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      size: 30,
                      color: Colors.green,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$580.0',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: height / 55),
                        ),
                        Text(
                          'Not specified',
                          style: TextStyle(
                              color: Colors.grey, fontSize: height / 60),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '16 Apr 24',
                          style: TextStyle(
                              fontSize: height / 65,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Icon(
                          Icons.payments_outlined,
                          color: Colors.green,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: height / 9,
              width: width / 1.05,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    color: Colors.black12,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white54,
                    radius: 25,
                    child: Icon(
                      Icons.compare_arrows,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$580.0',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: height / 55),
                        ),
                        Text(
                          'Not specified',
                          style: TextStyle(
                              color: Colors.grey, fontSize: height / 60),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '16 Apr 24',
                          style: TextStyle(
                              fontSize: height / 65,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Icon(
                          Icons.account_balance,
                          color: Colors.blue,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: height / 5,
              width: width / 1.060,
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0), // top to bottom
                  end: Alignment(0.0, 1.0), // top to bottom
                  colors: [
                    Colors.white,
                    Colors.grey.shade500, // Light grey as an intermediate color
                  ],
                  stops: [
                    0.3,
                    1,
                  ], // white ends at 70%, black starts at 80%
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 5),
                    blurRadius: 17,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '    ${homeProviderfalse.formatTimer(homeProvidertrue.secondsRemaining)}',
                        style: TextStyle(
                            fontSize: height / 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '💎',
                        style: TextStyle(
                            fontSize: height / 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ' hours ',
                        style: TextStyle(
                            fontSize: height / 85,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade700),
                      ),
                      Text(
                        ' minutes ',
                        style: TextStyle(
                            fontSize: height / 85,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade700),
                      ),
                      Text(
                        ' seconds',
                        style: TextStyle(
                            fontSize: height / 85,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Exdusive Offer',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Limited Time Only-Act Fast!',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: height / 20,
                          width: width / 4,
                          margin: EdgeInsets.only(left: width / 18),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            'Claim',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),
            //monthly budeget
            Row(
              children: [
                Text(
                  '  Monthly budeget',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                Spacer(),
                Text(
                  'Edit budget   ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: height / 5,
                  width: width / 1.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        spreadRadius: 1,
                        blurRadius: 0.5,
                        color: Colors.black12,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Budget left',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: height / 35),
                        ),
                        Text(
                          '\$55,944',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: height / 40),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Container(
                          height: height / 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black12,
                          ),
                          child: Row(
                            children: [
                              Text(
                                '   \$56.0',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: height / 55),
                              ),
                              Spacer(),
                              Text(
                                '\$56,000   ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: height / 55),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  '  Upcoming Reminders 💎',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: height / 35,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: height / 4.5,
              width: width / 1.1,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    spreadRadius: 1,
                    blurRadius: 0.5,
                    color: Colors.black12,
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Set Transaction Reminers',
                    style: TextStyle(
                        fontSize: height / 40, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Effortlessly manage your finances by setting reminders\n       for all your future and recurring transactions with',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'premium.',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: height / 20,
                    width: width / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: Center(
                        child: Text(
                      'Upgrade Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height / 45,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //articles
            Row(
              children: [
                Text(
                  '  Articles  ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: height / 40,
                  ),
                ),
                Icon(
                  Icons.visibility_off_outlined,
                  color: Colors.grey,
                  size: 18,
                ),
                Spacer(),
                Text(
                  'See more   ',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: height / 9,
              width: width / 1.1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    spreadRadius: 1,
                    blurRadius: 0.5,
                    color: Colors.black12,
                  )
                ],
              ),
              child: Row(
                children: [
                  Container(
                    height: height / 9,
                    width: width / 4,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'How to integrate Expenes\nManager in your life?',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35, top: 50),
                    child: Icon(Icons.share),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: height / 9,
              width: width / 1.1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    spreadRadius: 1,
                    blurRadius: 0.5,
                    color: Colors.black12,
                  )
                ],
              ),
              child: Row(
                children: [
                  Container(
                    height: height / 9,
                    width: width / 4,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'How to integrate Expenes\nManager in your life?',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35, top: 50),
                    child: Icon(Icons.share),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: height / 9,
              width: width / 1.1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    spreadRadius: 1,
                    blurRadius: 0.5,
                    color: Colors.black12,
                  )
                ],
              ),
              child: Row(
                children: [
                  Container(
                    height: height / 9,
                    width: width / 4,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'How to integrate Expenes\nManager in your life?',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35, top: 50),
                    child: Icon(Icons.share),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

}
