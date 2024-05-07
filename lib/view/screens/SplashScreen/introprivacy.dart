import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 150,right: 20,left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height / 3,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/intro.png'),
                  )
              ),
            ),
            SizedBox(height: height/25,),
            Text(
              'Your Data Stays Yours',
              style: GoogleFonts.poppins(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: height/55,),
            Text(
              'With a strong commitment to privacy,your financial data stays securely on your device. Experience financial tracking with peace of mind.',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: height/15,),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/s3');
              },
              child: Container(
                height: height/15,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child: Text('Embrace Privacy',style: GoogleFonts.poppins(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}