import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/color.dart';

class Transationa extends StatefulWidget {
  const Transationa({super.key});

  @override
  State<Transationa> createState() => _TransationaState();
}

class _TransationaState extends State<Transationa> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Backgruond,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor:  Backgruond,

        onPressed: () {},
        child: Icon(
          Icons.add,
          color: text,
        ),
      ),
      appBar: AppBar(
        backgroundColor:Backgruond,
        iconTheme: IconThemeData(color: text),
        title: Text(
          "Transactions",
          style: GoogleFonts.poppins(
            fontSize: 22,
            color: text,
          ),
        ),
        actions:  [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.menu,color: text,),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              children: [
                Container(
                  height: height / 20,
                  width: width / 1.2,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: width / 20,
                        ),
                        Text(
                          "Search",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Icon(Icons.menu),
                )
              ],
            ),
          ),
          SizedBox(
            height: height / 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: height / 9,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: height / 10.9,
                        width: width / 9,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black12),
                        child: Icon(Icons.more_horiz)),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "500.0",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Not specified",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("16 Apr 24",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Colors.black,
                            )),
                        Icon(
                          Icons.indeterminate_check_box,
                          color: Colors.green,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}