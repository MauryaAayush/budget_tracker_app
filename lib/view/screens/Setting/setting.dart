import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../utils/color.dart';
import '../../../utils/global_variable.dart';
import '../bottem_navigation_bar/bottem.dart';
import '../homeScreen/home.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => SettingState();
}

class SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Backgruond,
      appBar: AppBar(
        backgroundColor: Backgruond,
        iconTheme: IconThemeData(color: text),
        title: Text(
          "Settings",
          style: TextStyle(color: text),
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
                  color: text,
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
                            image: AssetImage(
                              "assets/img/images (1).jpeg",
                            ))),
                  ),
                  SizedBox(
                    width: width / 30,
                  ),
                  Container(
                    height: height / 9,
                    width: width / 4,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/img/img.png",
                            ))),
                  ),
                  SizedBox(
                    width: width / 30,
                  ),
                  Container(
                    height: height / 9,
                    width: width / 4,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/img/unnamed.png",
                            ))),
                  ),
                  SizedBox(
                    width: width / 30,
                  ),
                  Container(
                    height: height / 9,
                    width: width / 4,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/img/images.png",
                            ))),
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
                  color: text,
                  fontWeight: FontWeight.w500,
                  fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: height / 2.3,
                width: width,
                decoration: BoxDecoration(
                    color: Backgruond,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,

                        // offset: const Offset(1, 5),
                        blurRadius: 0.2,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: Backgruond,
                          builder: (BuildContext context) {
                            return Container(
                              height:height*0.5,
                              width: width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                           dark = true;
                                           Contain = (dark)?Colors.white24: Color(0xff202022) as Color;
                                           boder =(dark)?Colors.black12:Colors.white24 as Color;
                                           Backgruond = ((dark)?Colors.white:Colors.black) as Color;
                                           text = ((dark)?Colors.black:Colors.white) as Color;
                                           color_sigin_and_login = (dark)?Color(0xff059e2e):Color(0xffffffff);
                                           Color_backgrond = Color(0xffC8D2CB);
                                           swithact = (dark)?Colors.black87: Colors.blueAccent as Color;
                                          Navigator.pushNamed(context, '/bottem');
                                        });
                                      },
                                      child: Text(
                                    'Light',
                                    style: TextStyle(color: text,fontSize: 20),
                                  ),
                                  ),
                                  SizedBox(height: 20,),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        dark = false;
                                        Contain = (dark)?Colors.white24: Color(0xff202022) as Color;
                                        boder =(dark)?Colors.black12:Colors.white24 as Color;
                                         Backgruond = ((dark)?Colors.white:Colors.black) as Color;
                                         text = ((dark)?Colors.black:Colors.white) as Color;
                                         color_sigin_and_login = (dark)?Color(0xff059e2e):Color(0xffffffff);
                                         Color_backgrond = Color(0xffC8D2CB);
                                        swithact = (dark)?Colors.black87: Colors.blueAccent as Color;
                                        Navigator.pushNamed(context, '/bottem');
                                      });
                                    },
                                    child: Text(
                                      'Dark',
                                      style: TextStyle(color: text,fontSize: 20),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: ListTile(
                        title: Text(
                          "Theme",
                          style: TextStyle(color: text,fontSize: 20),
                        ),
                        subtitle: (dark)?Text("Light",style: TextStyle(color: text),):Text("Dark",style: TextStyle(color: text),),
                        trailing: Icon(Icons.arrow_forward_ios_rounded,color: text,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 3),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/currency');
                      },
                      child: ListTile(
                        title: Text(
                          "Currency & Format",
                          style: TextStyle(fontSize: 20,color: text),
                        ),
                        subtitle: Text("INR",style: TextStyle(color: text),),
                        trailing: Icon(Icons.arrow_forward_ios_rounded,color: text,),
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
                        "Default Payment Mode",
                        style: TextStyle(fontSize: 20,color: text),
                      ),
                      subtitle: Text("Cash",style: TextStyle(color: text),),
                      trailing: Icon(Icons.arrow_forward_ios_rounded,color: text,),
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
                        style: TextStyle(fontSize: 20,color: text),
                      ),
                      subtitle: Text("Show net balance for current month",style: TextStyle(color: text),),
                      trailing: Icon(Icons.arrow_forward_ios_rounded,color: text,),
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
                  color: text,
                  fontWeight: FontWeight.w500,
                  fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: height / 4.4,
                width: width,
                decoration: BoxDecoration(
                    color: Backgruond,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,

                         //offset: const Offset(1, 5),
                        blurRadius: 2,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Daily Reminder",
                        style: TextStyle(fontSize: 20,color: text),
                      ),
                      subtitle: Text("Remind me daily at 7:00 PM",style: TextStyle(color: text),),
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
                        style: TextStyle(fontSize: 20,color: text),
                      ),
                      subtitle:
                          Text("Notify me Whrn i go off-track With my budget",style: TextStyle(color: text),),
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
                  color: text,
                  fontWeight: FontWeight.w500,
                  fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: height / 1.5,
                width: width,
                decoration: BoxDecoration(
                    color: Backgruond,
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
                    ListTile(
                      title: Text(
                        "Backup Data",
                        style: TextStyle(fontSize: 20,color: text),
                      ),
                      subtitle: Text("Backup my Expenses Manager data",style: TextStyle(color: text),),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Restore Data ",
                        style: TextStyle(fontSize: 20,color: text),
                      ),
                      subtitle: Text("Restore from an existing backup",style: TextStyle(color: text),),
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
                        style: TextStyle(fontSize: 20,color: text),
                      ),
                      subtitle: Text("Export data to a speadsheet or aPDF",style: TextStyle(color: text),),
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
                        style: TextStyle(fontSize: 20,color: text),
                      ),
                      subtitle: Text("import data from a spreadsheet",style: TextStyle(color: text),),
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
                        style: TextStyle(fontSize: 20,color: text),
                      ),
                      subtitle: Text("Export all your images to a.Zip file",style: TextStyle(color: text),),
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
                        style: TextStyle(fontSize: 20,color: text),
                      ),
                      subtitle:
                          Text("Automatically backup data on my G-Drive daily",style: TextStyle(color: text),),
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
                  color: text,
                  fontWeight: FontWeight.w500,
                  fontSize: 25),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: height / 3.2,
                  width: width,
                  decoration: BoxDecoration(
                      color: Backgruond,
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
                        title:  Text(
                          "Account Balance Lock",
                          style: TextStyle(fontSize: 20,color: text),
                        ),
                        subtitle: Text("Require biometric to view balances",style: TextStyle(color: text),),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "App Lock 💎 ",
                          style: TextStyle(fontSize: 20,color: text),
                        ),
                        subtitle: Text("Set up a security passcode",style: TextStyle(color: text),),
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
                          style: TextStyle(fontSize: 20,color: text),
                        ),
                        subtitle: Text("Unlock the app using biometric login",style: TextStyle(color: text),),
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
                  color: text,
                  fontWeight: FontWeight.w500,
                  fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: height / 3.1,
                width: width,
                decoration: BoxDecoration(
                    color: Backgruond,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,

                        // offset: const Offset(1, 5),
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ],
                    borderRadius: BorderRadius.circular(15)),
                child:  Column(
                  children: [
                    ListTile(
                      title: Text(
                        "FAQ",
                        style: TextStyle(fontSize: 20,color: text),
                      ),
                      subtitle: Text("FAQs answered by our team",style: TextStyle(color: text),),
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
                        "Query And Feedback",
                        style: TextStyle(fontSize: 20,color: text),
                      ),
                      subtitle: Text("We generally reply within 24 hours", style: TextStyle(color: text),),
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
                        "Not Receiving Notification?",
                        style: TextStyle(fontSize: 20,color: text),
                      ),
                      subtitle:
                          Text("Not receiving notification for reminders set",style: TextStyle(color: text),),
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
                  color: text,
                  fontWeight: FontWeight.w500,
                  fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: height / 2.2,
                width: width,
                decoration: BoxDecoration(
                    color: Backgruond,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,

                        // offset: const Offset(1, 5),
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ],
                    borderRadius: BorderRadius.circular(15)),
                child:  Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Unlock Premium",
                        style: TextStyle(fontSize: 20,color: text),
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
                        "Restore Purchases",
                        style: TextStyle(fontSize: 20,color: text),
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
                        "Privacy Policy",
                        style: TextStyle(fontSize: 20,color: text),
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
                        "Contact Us",
                        style: TextStyle(fontSize: 20,color: text),
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
                        "About App",
                        style: TextStyle(fontSize: 20,color: text),
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
                  color: text,
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
                color: Backgruond,
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
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Delete Account",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
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
