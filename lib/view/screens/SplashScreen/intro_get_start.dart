import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Get_started extends StatefulWidget {
  const Get_started({super.key});

  @override
  State<Get_started> createState() => _Get_startedState();
}

class _Get_startedState extends State<Get_started> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 140, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height / 2.5,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/getstarted.png"))),
            ),
            SizedBox(
              height: height / 10,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Text(
                    "Simple and intuitive",
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 60,
                ),
                Text(
                  "Effortlessly add transsactions-groceries,bills,or anything in between. Experience hassle-free expense management right at your fingertips.",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: height / 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/s2');
                  },
                  child: Container(
                    height: height / 15,
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}