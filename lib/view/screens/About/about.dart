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
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15 ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(2, 4),
                            blurRadius: 15,
                            spreadRadius: 2)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: height * 0.07,
                          backgroundImage: AssetImage('assets/img/logo.png'),
                        ),
                        SizedBox(height: height * 0.04),
                        Text(
                          "Expenses Manager",
                          style: TextStyle(
                              fontSize: height * 0.025,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: height * 0.03),
                        Text(
                          "Expenses Manager redefines personal finance management by offering an intuitive, privacy- centric platform for effortless transaction tracking. Our app is designed for ease of use, allowing users to effortlessly categorize spending, create budgets, and analyze financial habits. This user-friendly approach provides insightful opportunities to save and grow wealth, all within a secure environment that prioritizes your privacy and data security.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: height * 0.018,
                              letterSpacing: 0.5),
                        ),
                        SizedBox(height: height * 0.04),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                                "assets/img/socialmedia_icon/instagram.png",
                                height: height * 0.03),
                            SizedBox(width: width * 0.05),
                            Image.asset(
                                "assets/img/socialmedia_icon/twitter.png",
                                height: height * 0.03),
                            SizedBox(width: width * 0.05),
                            Image.asset(
                                "assets/img/socialmedia_icon/linkedin.png",
                                height: height * 0.03),
                            SizedBox(width: width * 0.05),
                            Image.asset(
                                "assets/img/socialmedia_icon/facebook.png",
                                height: height * 0.03)
                          ],
                        ),
                        SizedBox(height: height * 0.03),
                        Container(
                          width: width,
                          decoration: BoxDecoration(
                            // color: Colors.brown,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all()),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                title: Text(
                                  "Feeback Session",
                                  style: TextStyle(
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "Schedule a feedback call with Amit\nto share your thoughts.",
                                  style: TextStyle(
                                      fontSize: height * 0.018,
                                      color: Colors.black54),
                                ),
                              ),
                              SizedBox(height: height * 0.02)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.04),
              Text(
                "Our Team",
                style: TextStyle(
                    fontSize: height * 0.026, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(2, 4),
                            blurRadius: 15,
                            spreadRadius: 2)
                      ]),
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: height * 0.08,
                          backgroundImage: AssetImage('assets/img/team/Aayush.jpg'),
                        ),
                        Text(
                          "Aayush Maurya",
                          style: TextStyle(
                              fontSize: height * 0.024,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Project Leader + R&D",
                          style: TextStyle(
                              fontSize: height * 0.018, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(2, 4),
                            blurRadius: 15,
                            spreadRadius: 2)
                      ]),
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: height * 0.08,
                          backgroundImage: AssetImage('assets/img/team/ashupal.jpg'),
                        ),
                        Text(
                          "Aashupal",
                          style: TextStyle(
                              fontSize: height * 0.024,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Tester + UX",
                          style: TextStyle(
                              fontSize: height * 0.018, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(2, 4),
                            blurRadius: 15,
                            spreadRadius: 2)
                      ]),
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: height * 0.08,
                          backgroundImage: AssetImage('assets/img/team/meet.jpg'),
                        ),
                        Text(
                          "Meet",
                          style: TextStyle(
                              fontSize: height * 0.024,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Sr. Developer + Features",
                          style: TextStyle(
                              fontSize: height * 0.018, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(2, 4),
                            blurRadius: 15,
                            spreadRadius: 2)
                      ]),
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: height * 0.08,
                          backgroundImage: AssetImage('assets/img/team/drashti.jpg'),
                        ),
                        Text(
                          "Drashti",
                          style: TextStyle(
                              fontSize: height * 0.024,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Sr. Developer + UX",
                          style: TextStyle(
                              fontSize: height * 0.018, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(2, 4),
                            blurRadius: 15,
                            spreadRadius: 2)
                      ]),
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: height * 0.08,
                          backgroundImage: AssetImage('assets/img/team/meshva.jpg'),
                        ),
                        Text(
                          "Meshva",
                          style: TextStyle(
                              fontSize: height * 0.024,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Developer + R&D",
                          style: TextStyle(
                              fontSize: height * 0.018, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(2, 4),
                            blurRadius: 15,
                            spreadRadius: 2)
                      ]),
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: height * 0.08,
                          backgroundImage: AssetImage('assets/img/team/jaydeep.jpg'),
                        ),
                        Text(
                          "Jaydeep",
                          style: TextStyle(
                              fontSize: height * 0.024,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Developer + UI + Assets",
                          style: TextStyle(
                              fontSize: height * 0.018, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(2, 4),
                            blurRadius: 15,
                            spreadRadius: 2)
                      ]),
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: height * 0.08,
                          backgroundImage: AssetImage('assets/img/team/Darshan.jpg'),
                        ),
                        Text(
                          "Darshan",
                          style: TextStyle(
                              fontSize: height * 0.024,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Developer + R&D",
                          style: TextStyle(
                              fontSize: height * 0.018, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Version 3.3.1",
                  style: TextStyle(
                      fontSize: height * 0.018, color: Colors.black54),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}