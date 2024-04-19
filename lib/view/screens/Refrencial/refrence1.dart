import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Referrals extends StatefulWidget {
  const Referrals({super.key});

  @override
  State<Referrals> createState() => _ReferralsState();
}
//
class _ReferralsState extends State<Referrals> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Referrals',
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: height * 0.18,
            width: width,
            child: Image.asset(
              'assets/img/1.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: height * 0.20,
            width: width,
            color: Colors.black,
            child: Image.asset(
              'assets/img/2.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          //Invite Friends box
          InkWell(
            onTap: () {
              setState(() {});
            },
            child: Container(
              height: height / 16,
              width: width / 1.050,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: Center(
                  child: Text(
                    'Invite Friends',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 19),
                  )),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: height / 18,
            width: width / 1.05,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 1),
                  spreadRadius: 0.5,
                  blurRadius: 1,
                  color: Colors.black12,
                ),
              ],
            ),
            child: Row(
              children: [
                Text(
                  '   How it works?',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                IconButton(onPressed: () {

                }, icon: Icon(Icons.arrow_drop_down_sharp,size: 30,color: Colors.black,))
              ],
            ),
          ),
          SizedBox(height: 2,),
          Container(
            height: height / 18,
            width: width / 1.05,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 1),
                  spreadRadius: 0.5,
                  blurRadius: 1,
                  color: Colors.black12,
                ),
              ],
            ),
            child: Row(
              children: [
                Text(
                  '   Terms and Conditions',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                IconButton(onPressed: () {

                }, icon: Icon(Icons.arrow_drop_down_sharp,size: 30,color: Colors.black,))
              ],
            ),
          ),
        ],
      ),
    );
  }
}