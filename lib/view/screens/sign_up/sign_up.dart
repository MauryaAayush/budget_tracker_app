import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../utils/color.dart';
import '../../../utils/global_variable.dart';
import '../log_in/components/show_dilioge.dart';

import 'components/usermodal.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

TextEditingController textName = TextEditingController();
TextEditingController textEmail = TextEditingController();
TextEditingController textMobileNum = TextEditingController();
TextEditingController textPassword = TextEditingController();
TextEditingController textConfirm = TextEditingController();

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Backgruond,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 55),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Getting Started',
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff059E2E),
                    fontWeight: FontWeight.bold),
              ),
               Text(
                'Create Your Account With Budget Friendly',
                style: TextStyle(fontSize: 15,color: text),
              ),
              SizedBox(
                height: height / 45,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      textname1 =
                          value; // Store the entered text in the variable
                    });
                  },
                  textInputAction: TextInputAction.next,
                  controller: textName,
                  style: TextStyle(color: text),
                  keyboardType: TextInputType.emailAddress,
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus!.unfocus();
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff059E2E), width: 2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: 'Full Name',
                    hintStyle: TextStyle(color: text),
                    focusColor: Color(0xff059E2E),
                    label: Text('Full Name'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      textEmail1 =
                          value; // Store the entered text in the variable
                    });
                  },
                  textInputAction: TextInputAction.next,
                  controller: textEmail,
                  keyboardType: TextInputType.emailAddress,
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus!.unfocus();
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff059E2E), width: 2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: 'Email ID',
                    focusColor: Color(0xff059E2E),
                    label: Text('Email ID'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      textMobileNum1 =
                          value; // Store the entered text in the variable
                    });
                  },
                  textInputAction: TextInputAction.next,
                  controller: textMobileNum,
                  keyboardType: TextInputType.emailAddress,
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus!.unfocus();
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff059E2E), width: 2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: 'Mobile Number',
                    focusColor: Color(0xff059E2E),
                    label: Text('Mobile Number'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      textPassword1 =
                          value; // Store the entered text in the variable
                    });
                  },
                  textInputAction: TextInputAction.next,
                  controller: textPassword,
                  keyboardType: TextInputType.emailAddress,
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus!.unfocus();
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff059E2E), width: 2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: 'Password',
                    focusColor: Color(0xff059E2E),
                    label: Text('Password'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      textConfirm1 =
                          value; // Store the entered text in the variable
                    });
                  },
                  textInputAction: TextInputAction.next,
                  controller: textConfirm,
                  keyboardType: TextInputType.emailAddress,
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus!.unfocus();
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff059E2E), width: 2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: 'Confirm Password',
                    focusColor: Color(0xff059E2E),
                    label: Text('Confirm Password'),
                  ),
                ),
              ),
              SizedBox(
                height: height / 35,
              ),
              GestureDetector(
                onTap: () {
                  //login chek for account
                  ((Singup)?login(username: textName.text, password: textConfirm.text, userid: textEmail.text):false)?showDialogBoxlogin(context):Singup=true;
                  (textname1 != null && textMobileNum1 !=null&& textConfirm1!=null && textEmail1 != null&& textPassword1 != null )?


                  (textPassword.text == textConfirm.text)?
                  (Singup)?signUp(username: textName.text,userid: textEmail.text,num: textMobileNum.text,password: textConfirm.text):null
                      :showDialogBox(context)
                      :showDialogBoxnull(context);

                  (navigation)?
                  Navigator.pushNamed(context, '/login'):null;
                  //showDialogBoxerror(context);

                },
                child: Padding(
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
                      'Sign In',
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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'or',
                      style: TextStyle(color: Colors.black54, fontSize: 17),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 0.5,
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
                padding: EdgeInsets.only(left: width / 5),
                child: Row(
                  children: [
                    Text(
                      "Dont Have An Account?",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Text("Login"))
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
