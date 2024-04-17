import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../utils/global_variable.dart';


class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "App Icon",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25),
            ),
            SizedBox(
              height: height / 60,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: height / 9,
                    width: width / 4,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/img/images (1).jpeg",))),
                  ),
                  SizedBox(width: width/30,),
                  Container(
                    height: height / 9,
                    width: width / 4,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/img/img.png",))),
                  ),
                  SizedBox(width: width/30,),
                  Container(
                    height: height / 9,
                    width: width / 4,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/img/unnamed.png",))),
                  ),
                  SizedBox(width: width/30,),
                  Container(
                    height: height / 9,
                    width: width / 4,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/img/images.png",))),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height / 60,
            ),
            Text(
              "General",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: height / 2.3,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,

                        // offset: const Offset(1, 5),
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Theme",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text("Light"),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 3),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Currency & Format",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text("INR"),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 3),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Default Payment Mode",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text("Cash"),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 3),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Home Page Balance View",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text("Show net balance for current month"),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height / 60,
            ),
            Text(
              "Notifications",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: height / 4.4,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,

                        // offset: const Offset(1, 5),
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Daily Reminder",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text("Remind me daily at 7:00 PM"),
                      trailing: Switch(
                        value: switchValue,
                        onChanged: (value) {
                          setState(() {
                            switchValue = value;
                          });
                        },
                        activeTrackColor: Colors.grey,
                        activeColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 3),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Budget Alerts 💎",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle:
                      Text("Notify me Whrn i go off-track With my budget"),
                      trailing: Switch(
                        value: switchValue,
                        onChanged: (value) {
                          setState(() {
                            switchValue = value;
                          });
                        },
                        activeTrackColor: Colors.grey,
                        activeColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height / 60,
            ),
            Text(
              "Backup,Restore & Export",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: height / 1.5,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,

                        // offset: const Offset(1, 5),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        "Backup Data",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text("Backup my Expenses Manager data"),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15, vertical: 3),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Restore Data ",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text("Restore from an existing backup"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 3),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Export Data 💎",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text("Export data to a speadsheet or aPDF"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 3),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Import Data 💎",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text("import data from a spreadsheet"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 3),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Export Images 💎",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text("Export all your images to a.Zip file"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 3),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Automatic G-Drive Backup 💎",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle:
                      Text("Automatically backup data on my G-Drive daily"),
                      trailing: Switch(
                        value: switchValue,
                        onChanged: (value) {
                          setState(() {
                            switchValue = value;
                          });
                        },
                        activeTrackColor: Colors.grey,
                        activeColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height / 60,
            ),
            Text(
              "Security",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: height / 3.2,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,

                          // offset: const Offset(1, 5),
                          blurRadius: 5,
                          spreadRadius: 1,
                        )
                      ]),
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text(
                          "Account Balance Lock",
                          style: TextStyle(fontSize: 20),
                        ),
                        subtitle: Text("Require biometric to view balances"),
                        trailing: Switch(
                          value: switchValue,
                          onChanged: (value) {
                            setState(() {
                              switchValue = value;
                            });
                          },
                          activeTrackColor: Colors.grey,
                          activeColor: Colors.white,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15, vertical: 3),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "App Lock 💎 ",
                          style: TextStyle(fontSize: 20),
                        ),
                        subtitle: Text("Set up a security passcode"),
                        trailing: Switch(
                          value: switchValue,
                          onChanged: (value) {
                            setState(() {
                              switchValue = value;
                            });
                          },
                          activeTrackColor: Colors.grey,
                          activeColor: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 3),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "Biometric Login  💎",
                          style: TextStyle(fontSize: 20),
                        ),
                        subtitle: Text("Unlock the app using biometric login"),
                        trailing: Switch(
                          value: switchValue,
                          onChanged: (value) {
                            setState(() {
                              switchValue = value;
                            });
                          },
                          activeTrackColor: Colors.grey,
                          activeColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: height / 60,
            ),
            Text(
              "Help",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: height / 3.1,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,

                        // offset: const Offset(1, 5),
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ],
                    borderRadius: BorderRadius.circular(15)),
                child: const Column(
                  children: [
                    ListTile(
                      title: Text(
                        "FAQ",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text("FAQs answered by our team"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15, vertical: 3),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Query And Feedback",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text("We generally reply within 24 hours"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15, vertical: 3),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Not Receiving Notification?",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle:
                      Text("Not receiving notification for reminders set"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height / 60,
            ),
            Text(
              "More",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: height / 2.2,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,

                        // offset: const Offset(1, 5),
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ],
                    borderRadius: BorderRadius.circular(15)),
                child: const Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Unlock Premium",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15, vertical: 3),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Restore Purchases",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15, vertical: 3),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Privacy Policy",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15, vertical: 3),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Contact Us",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15, vertical: 3),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "About App",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height / 60,
            ),
            Text(
              "Danger Zone",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25),
            ),
            SizedBox(
              height: height / 60,
            ),
            Container(
              height: height / 5.9,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,

                    // offset: const Offset(1, 5),
                    blurRadius: 5,
                    spreadRadius: 1,
                  )
                ],
              ),
              child: const Column(
                children: [
                  ListTile(
                    title: Text(
                      "Delete Data & Start Afresh",
                      style: TextStyle(color: Colors.red, fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Delete Account",
                      style: TextStyle(color: Colors.red, fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
