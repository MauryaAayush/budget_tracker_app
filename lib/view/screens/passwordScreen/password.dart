import 'package:flutter/material.dart';
class password extends StatefulWidget {
  const password({super.key});

  @override
  State<password> createState() => _passwordState();
}

TextEditingController textPassword = TextEditingController();
class _passwordState extends State<password> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Forgot Password",
              style: TextStyle(
                  color: Color(0xff059E2E),
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Enter Your Registered Email id or",
              style: TextStyle(fontSize: 15),
            ),
            Text(
              "Mobile Number To Get Otp",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            textFieldBox(
              textPassword,
              'Email ID or Mobile Number',
              'Email ID or Mobile Number',
            ),
            SizedBox(
              height: height / 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75),
              child: Container(
                height: height / 15,
                width: width / 1,
                decoration: BoxDecoration(
                  color: const Color(0xff059E2E),
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child:  Text(
                  'Send an Email',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget textFieldBox(
      TextEditingController controller, String name, String lname) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff059E2E), width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10),),),
          hintText: name,
          label: Text(lname),
        ),
      ),
    );
  }

}
