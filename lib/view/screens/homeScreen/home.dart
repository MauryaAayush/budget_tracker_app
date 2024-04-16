import 'package:budget_tracker_app/view/screens/log_in/login.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    DateTime dateTime = DateTime.now();

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 38, 10, 12),
                  height: height * 0.08,
                  width: width * 0.918,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 27,
                      ),

                      // here we have written the text of 👋 and AM
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                          )
                        ],
                      ),

                      const SizedBox(
                        width: 70,
                      ),

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
          ],
        ),
      ),
    );
  }
}
