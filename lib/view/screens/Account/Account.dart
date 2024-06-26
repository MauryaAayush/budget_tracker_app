import 'package:budget_tracker_app/utils/Globla_methods.dart';
import 'package:budget_tracker_app/utils/global_variable.dart';
import 'package:flutter/cupertino.dart';
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
      backgroundColor: Backgruond,
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
                      color: text,
                      fontSize: height * 0.024,
                      fontWeight: FontWeight.w700),
                ),
                GestureDetector(
                  onTap: () {
                    Premium_lelo(context, height, width);
                  },
                  child: Text(
                    "+ Add account",
                    style: TextStyle(
                        color: text,
                        fontSize: height * 0.019,
                        fontWeight: FontWeight.w400),
                  ),
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
                      fontSize: height * 0.013,
                      color: text,
                      letterSpacing: -0.5),
                ),
                Text(
                  "Show balance",
                  style: TextStyle(
                      fontSize: height * 0.013,
                      color: text,
                      letterSpacing: -0.5),
                ),
                Switch(
                  value: switchValue,
                  activeColor: Colors.white,
                  activeTrackColor: swithact,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            color: Contain,
                            height: height * 0.5,
                            width: width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                InkWell(
                                    onLongPress: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.fingerprint_outlined,
                                      color: Colors.blueAccent,
                                      size: 100,
                                    )),
                                SizedBox(height: 30),
                                Text(
                                  'Unlock By Fingerprint',
                                  style: TextStyle(color: text, fontSize: 20),
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          );
                        },
                      );
                    });
                  },
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
                      color: Contain,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: boder,
                            //offset: Offset(2, 4),
                            blurRadius: 0.2,
                            spreadRadius: 1)
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
                            color: text,
                            fontSize: height * 0.017,
                          ),
                        ),
                        Text(
                          (switchValue)
                              ? '$currencyCode${countBalance()}'
                              : "*****",
                          style: TextStyle(
                              color: text,
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
                      color: Contain,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: boder,
                            //offset: Offset(2, 4),
                            blurRadius: 0.5,
                            spreadRadius: 1)
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
                            color: text,
                            fontSize: height * 0.017,
                          ),
                        ),
                        Text(
                          (switchValue)
                              ? '$currencyCode${earningCounting()}'
                              : "*****",
                          style: TextStyle(
                              color: text,
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
                  style: TextStyle(fontSize: height * 0.018, color: text),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Card(
              color: Contain,
              child: ListTile(
                title: Text(
                  "Bank Account",
                  style: TextStyle(color: text, fontSize: height * 0.02),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      (switchValue)
                          ? '$currencyCode${countBalance()}'
                          : "*****",
                      style: TextStyle(
                          color: text,
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                    SizedBox(width: width * 0.02),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: text,
                    )
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
                  style: TextStyle(fontSize: height * 0.018, color: text),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Card(
              color: Contain,
              child: ListTile(
                title: Text(
                  "Cash",
                  style: TextStyle(color: text, fontSize: height * 0.02),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      (switchValue)
                          ? '$currencyCode${earningCounting()}'
                          : "*****",
                      style: TextStyle(
                          color: text,
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                    SizedBox(width: width * 0.02),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: text,
                    )
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
