import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    children: [
                      CircleAvatar(
                        maxRadius: height * 0.03,
                      ),
                      SizedBox(
                        width: width * 0.8,
                        child: ListTile(
                          title: Text(
                            "Guest User",
                            style: TextStyle(
                                fontSize: height * 0.02,
                                fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text(
                            "Sign in",
                            style: TextStyle(
                                fontSize: height * 0.017,
                                fontWeight: FontWeight.w600),
                          ),
                          trailing: Icon(
                            Icons.security,
                            size: height * 0.03,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Last backup: No backups created.",
                        style: TextStyle(
                            color: Colors.grey, fontSize: height * 0.016),
                      ),
                      Text(
                        "Backup now",
                        style: TextStyle(fontSize: height * 0.018),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: height * 0.068,
                        width: width * 0.45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(5, 5),
                                  blurRadius: 10,
                                  spreadRadius: 2)
                            ]),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Icon(
                                Icons.access_time_rounded,
                                color: Colors.teal.shade200,
                                size: height * 0.034,
                              ),
                            ),
                            Text(
                              "Transactions",
                              style: TextStyle(fontSize: height * 0.018),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.068,
                        width: width * 0.45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(5, 5),
                                  blurRadius: 10,
                                  spreadRadius: 2)
                            ]),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Icon(
                                Icons.access_time_rounded,
                                color: Colors.teal.shade200,
                                size: height * 0.034,
                              ),
                            ),
                            Text(
                              "Reminders",
                              style: TextStyle(fontSize: height * 0.018),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: height * 0.012),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
