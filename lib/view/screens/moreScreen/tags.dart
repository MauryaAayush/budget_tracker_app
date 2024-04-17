import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tags extends StatefulWidget {
  const Tags({super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Tags",
          style: GoogleFonts.poppins(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 280,),
            height: height / 9.8,
            width: width / 6,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
              'assets/img/hashtag.png',

            ),
                  fit: BoxFit.scaleDown,

                )),
          ),
          SizedBox(
            height: height / 55,
          ),
          Text(
            "No Tags",
            style: GoogleFonts.poppins(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: height / 55,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Text(
              "Tags added to transactions or reminders will appear here.",
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
