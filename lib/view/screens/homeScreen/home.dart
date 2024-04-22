import 'package:budget_tracker_app/utils/Globla_methods.dart';
import 'package:budget_tracker_app/utils/transactionData.dart';
import 'package:budget_tracker_app/view/screens/homeScreen/providers/homeProvider.dart';
import 'package:budget_tracker_app/view/screens/log_in/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../../utils/color.dart';
import '../../../utils/global_variable.dart';
import '../Add_Transaction/Components/Catogryicon.dart';

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
      backgroundColor: Backgruond,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 20, 10, 0),
                  height: height * 0.08,
                  width: width * 0.918,
                  color: Backgruond,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 27,
                        backgroundImage:
                            (imgPath != null) ? FileImage(imgPath!) : null,
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
                                color: text,
                              ),
                            ),
                            Text(
                              textName.text,
                              style: TextStyle(
                                  color: text,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ),

                      Spacer(),

                      Icon(
                        Icons.notifications_none_outlined,
                        size: 26,
                        color: text,
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
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17.5,
                        color: text),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: text,
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
                    height: height * 0.065,
                    width: width * 0.45,
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
                          radius: 18,
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
                                fontSize: height / 60,
                              ),
                            ),
                            Text(
                              '$currencyCode${spendingCounting()}',
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
                    height: height * 0.065,
                    width: width * 0.45,
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
                          radius: 18,
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
                                fontSize: height / 60,
                              ),
                            ),
                            Text(
                              '$currencyCode${earningCounting()}',
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
              height: height * 0.05,
              width: width * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: boder),
              child: Center(
                  child: Text(
                'Balance: $currencyCode${countBalance()}',
                style: TextStyle(
                    color: text,
                    fontSize: height / 60,
                    fontWeight: FontWeight.w500),
              )),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  '  Recent transactions',
                  style: TextStyle(
                      color: text,
                      fontWeight: FontWeight.w400,
                      fontSize: height / 48),
                ),
                Spacer(),
                Text(
                  'see all   ',
                  style: TextStyle(
                      color: text,
                      fontSize: height / 65,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            (transactionData.length == 0)
                ? Container(
                    margin: EdgeInsets.only(top: 10),
                    height: height / 5,
                    width: width / 5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/img/transaction.png'),
                      ),
                    ),
                  )
                : Container(
                    height: (transactionData.length == 1)
                        ? 90
                        : (transactionData.length == 2)
                            ? 180
                            : (transactionData.length == 3)
                                ? 270
                                : (transactionData.length == 4)
                                    ? 360
                                    : 360,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ...List.generate(
                            transactionData.length,
                            (index) => GestureDetector(
                              onLongPress: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    backgroundColor: Backgruond,
                                    title: Text(
                                      "Are you sure you want to delete",
                                      style: TextStyle(color: text),
                                    ),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            "Cancel",
                                            style: TextStyle(color: text),
                                          )),
                                      TextButton(
                                          onPressed: () {
                                            setState(() {
                                              transactionData.removeAt(index);
                                              Navigator.pop(context);
                                            });
                                          },
                                          child: Text(
                                            "Delete",
                                            style: TextStyle(color: text),
                                          )),
                                    ],
                                  ),
                                );
                              },
                              onTap: () {
                                isEditing = true;
                                isEditingIndex = index;
                                txtAmountExpense.text =
                                    transactionData[index]['amount'];
                                isExpense = transactionData[index]['isExpense'];
                                Navigator.pushReplacementNamed(
                                  context,
                                  '/add',
                                );
                              },
                              child: Container(
                                height: height / 12,
                                width: width / 1.05,
                                margin: EdgeInsets.only(bottom: height / 60),
                                decoration: BoxDecoration(
                                  color: (transactionData[index]['isExpense'])
                                      ? Colors.red.shade200
                                      : Color(0xffE8F6E9),
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 1),
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      color: (dark)
                                          ? Colors.black12
                                          : Colors.white12,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    CircleAvatar(
                                        backgroundColor: categoryIconColorList[
                                                transactionData[index]
                                                    ['categoryIconColor']]
                                            .withOpacity(0.15),
                                        radius: 25,
                                        child: transactionData[index]
                                            ['categoryIcon']),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '$currencyCode${transactionData[index]['amount']}',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                fontSize: height / 45),
                                          ),
                                          Text(
                                            (transactionData[index]['note'] ==
                                                    "")
                                                ? 'Not specified'
                                                : transactionData[index]
                                                    ['note'],
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: height / 60),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            '16 Apr 24',
                                            style: TextStyle(
                                                fontSize: height / 65,
                                                fontWeight: FontWeight.w500,
                                                color: text),
                                          ),
                                          transactionData[index]['paymentIcon']
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

            SizedBox(
              height: 20,
            ),
            Container(
              height: height / 4,
              width: width / 1.060,
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0), // top to bottom
                  end: Alignment(0.0, 1.0), // top to bottom
                  colors: [
                    Backgruond,
                    Colors.grey.shade500, // Light grey as an intermediate color
                  ],
                  stops: [
                    0.3,
                    1,
                  ], // white ends at 70%, black starts at 80%
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 7),
                    blurRadius: 10,
                    color: (dark)
                        ? Colors.black.withOpacity(0.5)
                        : Colors.white.withOpacity(0.5),
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
                            color: text,
                            fontSize: height / 28,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '   💎',
                        style: TextStyle(
                            fontSize: height / 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'hours',
                        style: TextStyle(
                            fontSize: height / 85,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade700),
                      ),
                      SizedBox(
                        width: width * 0.04,
                      ),
                      Text(
                        'minutes',
                        style: TextStyle(
                            fontSize: height / 85,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade700),
                      ),
                      SizedBox(
                        width: width * 0.04,
                      ),
                      Text(
                        'seconds',
                        style: TextStyle(
                            fontSize: height / 85,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade700),
                      ),
                      SizedBox(
                        width: width * 0.08,
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
                              'Exclusive Offer',
                              style: TextStyle(
                                color: text,
                                fontWeight: FontWeight.bold,
                                fontSize: height / 40,
                              ),
                            ),
                            Text(
                              'Limited Time Only-Act Fast!',
                              style: TextStyle(
                                color: text,
                                fontWeight: FontWeight.w400,
                                fontSize: height / 50,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: height / 20,
                          width: width / 4,
                          margin: EdgeInsets.only(left: width / 15),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: text,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            'Claim',
                            style: TextStyle(
                                color: Backgruond,
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
                  style: TextStyle(
                      color: text, fontWeight: FontWeight.w500, fontSize: 17),
                ),
                Spacer(),
                Text(
                  'Edit budget   ',
                  style: TextStyle(
                      color: text, fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: width*0.16,
                ),
                Container(
                  height: height / 5,
                  width: width / 1.5,
                  decoration: BoxDecoration(
                    color: Contain,
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        spreadRadius: 1,
                        blurRadius: 0.5,
                        color: boder,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Budget left',
                          style: TextStyle(
                              color: text,
                              fontWeight: FontWeight.w400,
                              fontSize: height / 35),
                        ),
                        Text(
                          '$currencyCode${countBalance()}',
                          style: TextStyle(
                              color: text,
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
                            color: Backgruond,
                          ),
                          child: Row(
                            children: [
                              Text(
                                '$currencyCode${spendingCounting()}',
                                style: TextStyle(
                                    color: text,
                                    fontWeight: FontWeight.w500,
                                    fontSize: height / 55),
                              ),
                              Spacer(),
                              Text(
                                '$currencyCode${earningCounting()}',
                                style: TextStyle(
                                    color: text,
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
                    color: text,
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
                color: Contain,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    spreadRadius: 1,
                    blurRadius: 0.5,
                    color: boder,
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
                        color: text,
                        fontSize: height / 40,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Effortlessly manage your finances by setting reminders\n       for all your future and recurring transactions with',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: text,
                    ),
                  ),
                  Text(
                    'premium.',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: text,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Premium_lelo(context, height, width);
                    },
                    child: Container(
                      height: height / 20,
                      width: width / 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: text,
                      ),
                      child: Center(
                          child: Text(
                        'Upgrade Now',
                        style: TextStyle(
                            color: Backgruond,
                            fontSize: height / 45,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
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
                    color: text,
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
                      fontSize: 15, fontWeight: FontWeight.w500, color: text),
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
                color: Contain,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    spreadRadius: 1,
                    blurRadius: 0.5,
                    color: boder,
                  )
                ],
              ),
              child: Row(
                children: [
                  Container(
                    height: height / 9,
                    width: width / 4,
                    decoration: BoxDecoration(
                        color: Contain,
                        image: DecorationImage(
                            image: AssetImage('assets/img/m1.png')),
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
                            color: text,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35, top: 50),
                    child: Icon(
                      Icons.share,
                      color: text,
                    ),
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
                color: Contain,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    spreadRadius: 1,
                    blurRadius: 0.5,
                    color: boder,
                  )
                ],
              ),
              child: Row(
                children: [
                  Container(
                    height: height / 9,
                    width: width / 4,
                    decoration: BoxDecoration(
                        color: Contain,
                        image: DecorationImage(
                            image: AssetImage('assets/img/m2.webp')),
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
                            color: text,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35, top: 50),
                    child: Icon(
                      Icons.share,
                      color: text,
                    ),
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
                color: Contain,

                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    spreadRadius: 1,
                    blurRadius: 0.5,
                    color: boder,
                  )
                ],
              ),
              child: Row(
                children: [
                  Container(
                    height: height / 9,
                    width: width / 4,
                    decoration: BoxDecoration(
                        color: Contain,
                        image: DecorationImage(
                            image: AssetImage('assets/img/m3.png')),
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
                            color: text,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35, top: 50),
                    child: Icon(
                      Icons.share,
                      color: text,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
