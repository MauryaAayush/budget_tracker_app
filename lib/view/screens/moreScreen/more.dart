import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../utils/color.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      bottomNavigationBar: bottemnavigationbar(),
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
                    leading: Icon(Icons.settings_outlined, size: height * 0.032,
                      color: Colors.black54,),
                    title: Text("Settings"),
                  ),
                  ListTile(
                    leading: Icon(Icons.campaign_outlined, size: height * 0.032,
                      color: Colors.black54,),
                    title: Text("Referrals"),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.star_border_purple500, size: height * 0.032,
                      color: Colors.black54,),
                    title: Text("Rate App"),
                  ),
                  ListTile(
                    leading: Icon(Icons.chat_outlined, size: height * 0.032,
                      color: Colors.black54,),
                    title: Text("Query/feedback"),
                  ),
                  ListTile(
                    leading: Icon(Icons.help_outline, size: height * 0.032,
                      color: Colors.black54,),
                    title: Text("FAQ"),
                  ),
                  ListTile(
                    leading: Icon(Icons.error_outline, size: height * 0.032,
                      color: Colors.black54,),
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

  ImagePicker imagePicker = ImagePicker();
  File? imgPath;

  Future<void> pickImage() async {
    final picker = await imagePicker.pickImage(source: ImageSource.gallery);
    imgPath = File(picker!.path);
    setState(() {});
  }
}
