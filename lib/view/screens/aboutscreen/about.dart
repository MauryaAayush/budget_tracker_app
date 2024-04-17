import 'package:flutter/material.dart';

class AboutApp extends StatefulWidget {
  const AboutApp({super.key});

  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          "About app",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            Container(
              width: width,
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  children: [
                    CircleAvatar(
                      maxRadius: height * 0.07,
                      backgroundImage: AssetImage('assets/img/logo.png'),
                    ),
                    SizedBox(height: height*0.04),
                    Text(
                      "Expenses Manager",
                      style: TextStyle(
                          fontSize: height * 0.025,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: height*0.03),
                    Text(
                      "Expenses Manager redefines personal finance management by offering an intuitive, privacy- centric platform for effortless transaction tracking. Our app is designed for ease of use, allowing users to effortlessly categorize spending, create budgets, and analyze financial habits. This user-friendly approach provides insightful opportunities to save and grow wealth, all within a secure environment that prioritizes your privacy and data security.",textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: height*0.018,
                        letterSpacing:0.5
                      ),
                    ),
                    Row(children: [

                    ],)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
