import 'package:flutter/material.dart';

Widget otpBox(double height, double width) {
  return Container(
    height: height / 15,
    width: width / 1,
    decoration: BoxDecoration(
      color: Color(0xff059E2E),
      borderRadius: BorderRadius.circular(15),
    ),
    alignment: Alignment.center,
    child: Text(
      'Submit OTP',
      style: TextStyle(
          fontSize: 22,
          color: Colors.white,
          fontWeight: FontWeight.w500),
    ),
  );
}