import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget listviewBox(double height, double width, String name, Icon icon) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Container(
      height: height / 10,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            spreadRadius: 0.5,
            color: Colors.grey.shade300,
            blurRadius: 3,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: ListTile(
          leading: Container(
            height: height / 9,
            width: width / 7,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black12,
            ),
            child: icon,
          ),
          title: Text(
            name,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    ),
  );
}