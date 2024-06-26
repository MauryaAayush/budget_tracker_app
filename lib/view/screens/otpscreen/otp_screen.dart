import 'package:flutter/material.dart';

import 'components/container_box.dart';
import 'components/otp_box.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Verify It's You",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xff059E2E),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'We Send A Code To',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              '(******@Gmail.com,91*******96)',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: height / 15),
            Row(
              children:
                  List.generate(6, (index) => containerBox(height, width)),
            ),
            SizedBox(height: height / 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Resend Code",
                style: TextStyle(
                    fontSize: 17,
                    color: Color(0xff059E2E),
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: height / 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75),
              child: otpBox(height, width),
            ),
          ],
        ),
      ),
    );
  }
}
