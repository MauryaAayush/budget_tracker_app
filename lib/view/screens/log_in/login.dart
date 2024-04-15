import 'package:flutter/material.dart';

import '../sign_up/components/text_field.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

TextEditingController textName = TextEditingController();
TextEditingController textEmail = TextEditingController();
TextEditingController textPassword = TextEditingController();

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(
                    color: Color(0xff059E2E),
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Login With Budget Friendly",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              textFieldBox(
                textName,
                'Full Name',
                'Full Name',
              ),
              textFieldBox(textEmail, 'Email ID OR Mobile Number',
                  'Email ID OR Mobile Number'),
              textFieldBox(textPassword, 'Password', 'Password'),
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
                  child: const Text(
                    'Log  In',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: height / 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 0.5,
                      width: width,
                      color: Colors.grey,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'or',
                      style: TextStyle(color: Colors.black54, fontSize: 17),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 0.3,
                      width: width,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height / 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: height / 17,
                  width: width,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign In With Google',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: RichText(
                  text: const TextSpan(
                    text: 'Dont Have An Account?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign In',
                        style: TextStyle(
                          color: Color(0xff059E2E),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
