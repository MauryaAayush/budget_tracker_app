import 'package:flutter/material.dart';

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
}