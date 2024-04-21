import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future<dynamic> Premium_lelo(BuildContext context, double height, double width) {
  return showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: 350,
        child: Column(
          children: [
            Container(
              height: height / 3.30,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/img/sheet.jpeg'),
                  )
              ),
              child: Stack(
                children: [
                  Positioned(
                      top: height*0.05,
                      left: width*0.33,

                      child: Image.asset('assets/img/logo.png')),
                  Positioned(
                    top: height*0.25,
                    left: width*0.1,
                    child: Container(
                      alignment: Alignment.center,
                      height: height / 18,
                      width: width/1.2,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text('Premium Lelo',style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height/20,),

          ],
        ),
      );
    },
  );
}


Future<dynamic> Play_Store(BuildContext context, double height, double width) {
  return showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: 350,
        child: Column(
          children: [
            Container(
                height: height / 3.30,
                width: width,
                alignment: Alignment.center,
                child: Text(
                  'Abhi Play Store me ana baki hai',
                  style: TextStyle(fontSize: 20),
                )),
            SizedBox(
              height: height / 20,
            ),
          ],
        ),
      );
    },
  );
}