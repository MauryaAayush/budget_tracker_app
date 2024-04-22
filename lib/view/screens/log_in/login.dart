import 'package:flutter/material.dart';

import '../../../utils/color.dart';
import '../sign_up/components/text_field.dart';
import '../sign_up/components/usermodal.dart';
import 'components/show_dilioge.dart';

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
      backgroundColor: Backgruond,
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
                style: TextStyle(fontSize: 15,color: text),
              ),
              SizedBox(
                height: 10,
              ),
              textFieldBox(
                textName,
                'Full Name',
                'Full Name',
              ),
              textFieldBox(textEmail, 'Email ID',
                  'Email ID'),
              textFieldBox(textPassword, 'Password', 'Password'),
              SizedBox(
                height: height / 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 75),
                child: InkWell(
                  onTap: () {
                    (login(password:textPassword.text,userid: textEmail.text,username: textName.text ))?
                    Navigator.pushNamed(context, '/bottem')
                        :showDialogBoxusernotfound(context);
                  },
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
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'or',
                      style: TextStyle(color: text, fontSize: 17),
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
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign In With Google',
                        style: TextStyle(
                          color: text,
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 45,
              ),

              Padding(
                padding:  EdgeInsets.only(left: width/5),
                child: Row(
                    children: [
                      Text("Dont Have An Account?",style: TextStyle(
                        fontSize: 15,
                        color: text
                      ),),

                      TextButton(onPressed: () {
                        Navigator.pushNamed(context, '/signUp');
                      }, child: Text("Sign Up"))


                    ],
                  ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
