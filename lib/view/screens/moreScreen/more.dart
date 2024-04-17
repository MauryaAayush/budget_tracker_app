import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
              padding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: width / 29),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: () {
                          pickImage();
                        },
                        child: CircleAvatar(
                          maxRadius: height * 0.03,
                          backgroundImage:
                              (imgPath != null) ? FileImage(imgPath!) : null,
                        ),
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                                  offset: Offset(2, 4),
                                  blurRadius: 10,
                                  spreadRadius: 2)
                            ]),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Icon(
                                Icons.list,
                                color: Colors.blueAccent,
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
                                  offset: Offset(2, 4),
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
                                  offset: Offset(2, 4),
                                  blurRadius: 10,
                                  spreadRadius: 2)
                            ]),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Icon(
                                Icons.wallet,
                                color: Colors.brown,
                                size: height * 0.034,
                              ),
                            ),
                            Text(
                              "Budgets",
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
                                  offset: Offset(2, 4),
                                  blurRadius: 10,
                                  spreadRadius: 2)
                            ]),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Icon(
                                Icons.category_outlined,
                                color: Colors.green,
                                size: height * 0.034,
                              ),
                            ),
                            Text(
                              "Categories",
                              style: TextStyle(fontSize: height * 0.018),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: height * 0.012),
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
                                  offset: Offset(2, 4),
                                  blurRadius: 10,
                                  spreadRadius: 2)
                            ]),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Icon(
                                Icons.tag,
                                color: Colors.teal.shade200,
                                size: height * 0.034,
                              ),
                            ),
                            Text(
                              "Tags",
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
                                  offset: Offset(2, 4),
                                  blurRadius: 10,
                                  spreadRadius: 2)
                            ]),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Icon(
                                Icons.diamond_outlined,
                                color: Colors.amber.shade400,
                                size: height * 0.034,
                              ),
                            ),
                            Text(
                              "Go Premium",
                              style: TextStyle(fontSize: height * 0.018),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: height * 0.03),
                  Text("Views",
                      style: TextStyle(
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: height * 0.012),
                  Row(
                    children: [
                      Container(
                        height: height * 0.11,
                        width: width * 0.28,
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
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.calendar_view_day_outlined,
                                size: height * 0.04,
                              ),
                              Text(
                                "Day",
                                style: TextStyle(fontSize: height * 0.02),
                              )
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: height * 0.11,
                        width: width * 0.28,
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
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.calendar_month_outlined,
                                size: height * 0.04,
                              ),
                              Text(
                                "Month",
                                style: TextStyle(fontSize: height * 0.02),
                              )
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: height * 0.11,
                        width: width * 0.28,
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
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.tune_outlined,
                                size: height * 0.04,
                              ),
                              Text(
                                "Custom",
                                style: TextStyle(fontSize: height * 0.02),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.02),
                  Text("More options",
                      style: TextStyle(
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.bold)),
                  ListTile(
                    leading: Icon(
                      Icons.settings_outlined,
                      size: height * 0.032,
                      color: Colors.black54,
                    ),
                    title: Text("Settings"),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.campaign_outlined,
                      size: height * 0.032,
                      color: Colors.black54,
                    ),
                    title: Text("Referrals"),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.star_border_purple500,
                      size: height * 0.032,
                      color: Colors.black54,
                    ),
                    title: Text("Rate App"),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.chat_outlined,
                      size: height * 0.032,
                      color: Colors.black54,
                    ),
                    title: Text("Query/feedback"),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.help_outline,
                      size: height * 0.032,
                      color: Colors.black54,
                    ),
                    title: Text("FAQ"),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.error_outline,
                      size: height * 0.032,
                      color: Colors.black54,
                    ),
                    title: Text("About app"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  ImagePicker imagePicker = ImagePicker();
  File? imgPath;

  Future<void> pickImage() async {
    final picker = await imagePicker.pickImage(source: ImageSource.gallery);
    imgPath = File(picker!.path);
    setState(() {});
  }
}
