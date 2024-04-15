import 'package:flutter/material.dart';

Widget containerBox(double height, double width) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 6),
    child: Container(
      height: height / 17,
      width: width / 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Color(0xff059E2E), width: 2),
      ),
    ),
  );
}