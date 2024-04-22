import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/color.dart';
import '../../../utils/global_variable.dart';
import '../../../utils/transactionData.dart';
import '../Add_Transaction/Components/Catogryicon.dart';

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
            child: Column(
              children: [
                ...List.generate(
                  transactionData.length,
                      (index) => GestureDetector(
                    onLongPress: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor: Backgruond,
                          title: Text(
                            "Are you sure you want to delete",
                            style: TextStyle(color: text),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(color: text),
                                )),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    transactionData.removeAt(index);
                                    Navigator.pop(context);
                                  });
                                },
                                child: Text(
                                  "Delete",
                                  style: TextStyle(color: text),
                                )),
                          ],
                        ),
                      );
                    },
                    onTap: () {
                      isEditing = true;
                      isEditingIndex = index;
                      txtAmountExpense.text =
                      transactionData[index]['amount'];
                      isExpense = transactionData[index]['isExpense'];
                      Navigator.pushReplacementNamed(
                        context,
                        '/add',
                      );
                    },
                    child: Container(
                      height: height / 12,
                      width: width / 1.05,
                      margin: EdgeInsets.only(bottom: height / 60),
                      decoration: BoxDecoration(
                        color: (transactionData[index]['isExpense'])
                            ? Contain
                            : Color(0xffE8F6E9),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 1),
                            spreadRadius: 1,
                            blurRadius: 5,
                            color: (dark)
                                ? Colors.black12
                                : Colors.white12,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                              backgroundColor: categoryIconColorList[

                              transactionData[index]
                              ['categoryIconColor']]
                                  .withOpacity(0.15),
                              radius: 25,
                              child: transactionData[index]
                              ['categoryIcon']),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '$currencyCode${transactionData[index]['amount']}',
                                  style: TextStyle(
                                      color: text,
                                      fontWeight: FontWeight.w400,
                                      fontSize: height / 45),
                                ),
                                Text(
                                  (transactionData[index]['note'] ==
                                      "")
                                      ? 'Not specified'
                                      : transactionData[index]
                                  ['note'],
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: height / 60),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              crossAxisAlignment:
                              CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '16 Apr 24',
                                  style: TextStyle(
                                      fontSize: height / 65,
                                      fontWeight: FontWeight.w500,
                                      color: text),
                                ),
                                transactionData[index]['paymentIcon']
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}