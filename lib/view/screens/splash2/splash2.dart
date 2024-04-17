import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(

        children: [
          SizedBox(height: 100,),
          Center(child: Text("What's your Primary Goal? ",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: height/30,
          ),)),
          SizedBox(height: 50,),

          Container(
            height: height/7,
            width: width/1.080,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  color: Colors.black12,
                ),
              ],
            ),child: Row(
            children: [
              Text('     Budgeting',style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w500
              ),),
              Spacer(),
              Container(
                height: height/7,
                width: width/3,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10)),
                 color: Colors.black,
                   
               ),
                child: ClipRRect(
                    borderRadius: BorderRadiusDirectional.only(bottomEnd: Radius.circular(10),topEnd: Radius.circular(10)),
                    child: Image.asset('assets/img/5.jpeg',fit: BoxFit.cover,)),
              ),

            ],
          ),
          ),
          SizedBox(height: 20,),
          Container(
            height: height/7,
            width: width/1.080,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  color: Colors.black12,
                ),
              ],
            ),child: Row(
            children: [
              Text('     Track My Spending',style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w500
              ),),
              Spacer(),
              Container(
                height: height/7,
                width: width/3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10)),
                  color: Colors.black,

                ),
                child: ClipRRect(
                    borderRadius: BorderRadiusDirectional.only(bottomEnd: Radius.circular(10),topEnd: Radius.circular(10)),
                    child: Image.asset('assets/img/4.jpeg',fit: BoxFit.cover,)),
              ),

            ],
          ),
          ),
          SizedBox(height: 20,),
          Container(
            height: height/7,
            width: width/1.080,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  color: Colors.black12,
                ),
              ],
            ),child: Row(
            children: [
              Text('     Save Money',style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w500
              ),),
              Spacer(),
              Container(
                height: height/7,
                width: width/3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10)),
                  color: Colors.black,

                ),
                child: ClipRRect(
                    borderRadius: BorderRadiusDirectional.only(bottomEnd: Radius.circular(10),topEnd: Radius.circular(10)),
                    child: Image.asset('assets/img/3.jpeg',fit: BoxFit.cover,)),
              ),

            ],
          ),
          ),
          SizedBox(height: 120,),
          //Next button
          InkWell(
            onTap: () {

            },
            child: Container(
              height: height/16,
              width: width/1.3,
             decoration: BoxDecoration(
               color: Colors.black,
               borderRadius: BorderRadius.circular(10),
             ),child: Center(
              child: Text('Next',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 20
              ),
              ),
            ),
            ),
          )

        ],
      ),

    );
  }
}
