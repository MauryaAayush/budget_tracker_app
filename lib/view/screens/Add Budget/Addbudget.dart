import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddBudget extends StatefulWidget {
  const AddBudget({super.key});

  @override
  State<AddBudget> createState() => _AddBudgetState();
}

class _AddBudgetState extends State<AddBudget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          'Add Budget',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: Column(
        children: [

          Container(
            height: height / 15,
            width: width / 1,
            decoration:
            BoxDecoration(color: Colors.white, boxShadow: [BoxShadow()]),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.calendar_month,
                  color: Colors.black,
                  size: 25,
                ),
                Text(
                  '      April,2024',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                )
              ],
            ),
          ),
          // input
          Container(
            height: height / 10,
            width: width / 1,
            decoration:
            BoxDecoration(color: Colors.white, boxShadow: [BoxShadow(
                offset: Offset(0, 0),
                spreadRadius: 0.2,
                blurRadius: 0.2,
                color: Colors.grey
            )]),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.currency_rupee_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                Column(
                  children: [
                    Text(
                      'Total Budget  ',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Colors.grey),
                    ),

                  ],
                )
              ],
            ),
          ),
          Container(
            height: height / 11,
            width: width / 1,
            decoration:
            BoxDecoration(color: Colors.white, boxShadow: [BoxShadow(
                offset: Offset(0, 0),
                spreadRadius: 0.2,
                blurRadius: 0.2,
                color: Colors.grey
            )]),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.menu_rounded,
                  color: Colors.black,
                  size: 30,
                ),
                Text('      Set category wise budget',style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400
                ),),
               Spacer(),

                Switch(value: false, onChanged: (value) {


                },)
              ],
            ),
          ),
          Container(
            height: height / 9,
            width: width / 1,
            decoration:
            BoxDecoration(color: Colors.white, boxShadow: [BoxShadow(
                offset: Offset(0, 0),
                spreadRadius: 0.2,
                blurRadius: 0.2,
                color: Colors.grey
            )]),

          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
            child: Row(
              children: [
                Text('Budgeting tip',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20
                ),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
            child: Row(
              children: [
                Text('The 50-30-20 rule',style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  color: Colors.grey.shade700
                ),)
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text('   It is an intuitive and simple plan to help you reach your\n   financial goal. This rule is a template that is intended\n   to help you manage your money and to save for \n   emergencies and retirement.',style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.5,
                    color: Colors.black
                ),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text('   It asks you to break your in-hand income into three \n   parts: 50% goes to your needs, 30% to wants and 20% \n   and investing. This will instill a sense of discipline at\n   same time ensuring you neither compromise on the\n   quality of living nor planning for your long term goals.',style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.5,
                    color: Colors.black
                ),)
              ],
            ),
          ),
          SizedBox(height: height/8,),
          Center(child: Text('Learn more',style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18
          ),),)



        ],
      ),
    );
  }
}
