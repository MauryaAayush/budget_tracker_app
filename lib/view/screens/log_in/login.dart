import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}
TextEditingController textName=TextEditingController();
TextEditingController textEmail=TextEditingController();
TextEditingController textPassword=TextEditingController();

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 15),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome Back",style: TextStyle(color: Color(0xff059E2E),fontSize: 28,fontWeight: FontWeight.bold),),
            Text("Login With Budget Friendly",style: TextStyle(fontSize: 15),),
            SizedBox(height: 10,),
            textfieldBox(
              textName,
              'Full Name',
              'Full Name',
            ),
            textfieldBox(textEmail, 'Email ID OR Mobile Number', 'Email ID OR Mobile Number'),
            textfieldBox(textPassword, 'Password', 'Password'),


          ],
        ),
      ),
    );
  }

  Padding textfieldBox(TextEditingController controller, String name,String lname) {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(10),

                ),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff059E2E),width: 2),borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: name,

                label: Text(lname),
              ),
            ),
          );
  }
}

