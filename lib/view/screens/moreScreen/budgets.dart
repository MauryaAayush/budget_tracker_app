import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Budgets extends StatefulWidget {
  const Budgets({super.key});

  @override
  State<Budgets> createState() => _BudgetsState();
}

class _BudgetsState extends State<Budgets> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.black,

        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Budgets",
          style: GoogleFonts.poppins(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(


        children: [
          Container(
            margin: EdgeInsets.only(top: 200),
            height: height / 4.9,
            width: width / 3,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/img/budget.png'))),
          ),

          Text("No budgets set!",style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.black,
          ),),
          SizedBox(
            height: height / 55,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 44.6, right: 28),
            child: Text("Setting up abudget lets you plan your  expenditure,and it ensures that you meet your goal of saving the desired amount of money at the end of the month.",style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.grey,
            ),),
          )
        ],
      ),
    );
  }
}
