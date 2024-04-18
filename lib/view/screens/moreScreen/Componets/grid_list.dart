import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget categoriesBox(double height, double width, String name,Icon icon) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            spreadRadius: 0.5,
            color: Colors.grey.shade300,
            blurRadius: 3,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: height / 9,
            width: width / 6,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black12,
            ),
            child: icon,
          ),
          Text(
            name,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ),
  );
}