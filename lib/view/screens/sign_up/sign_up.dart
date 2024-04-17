import 'package:flutter/material.dart';
import '../../../utils/color.dart';
import '../log_in/components/show_dilioge.dart';
import 'components/text_field.dart';
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
              const Text(
                'Create Your Account With Budget Friendly',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: height / 45,
              ),
              textFieldBox(
                textName,
                'Full Name',
                'Full Name',
              ),
              textFieldBox(textEmail, 'Email ID', 'Email ID '),
              textFieldBox(textMobileNum, 'Mobile Number', 'Mobile Number'),
              textFieldBox(textPassword, 'Password', 'Password '),
              textFieldBox(textConfirm, 'Confirm Password', 'Confirm Password'),
              SizedBox(
                height: height / 35,
              ),
              InkWell(
                onTap: () {
                  (textName != null && textMobileNum !=null&& textConfirm!=null && textEmail != null&& textPassword!= null )?

                  (textPassword.text == textConfirm.text)?
                  signUp(username: textName.text,userid: textEmail.text,num: textMobileNum.text,password: textConfirm.text):showDialogBox(context)
                  :showDialogBoxnull(context);

                  (navigation)?Navigator.pushNamed(context, '/bottem'):showDialogBoxerror(context);

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
                padding:  EdgeInsets.only(left: width/5),
                child: Row(
                  children: [
                    Text("Dont Have An Account?",style: TextStyle(
                        fontSize: 15,
                        color: Colors.black
                    ),),

                    TextButton(onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    }, child: Text("Login"))


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
