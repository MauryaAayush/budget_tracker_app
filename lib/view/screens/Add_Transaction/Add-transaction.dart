import 'package:budget_tracker_app/view/screens/Add_Transaction/AddIncome.dart';
import 'package:budget_tracker_app/view/screens/Add_Transaction/addExpense.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/global_variable.dart';
import 'components/categoryIcon.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({super.key});

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black87,
        title: Text(
          'Add Transaction',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black87,
        child: Icon(
          Icons.save,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.03, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height / 90,
            ),
            Container(
              height: height / 20,
              width: width,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width / 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          isExpense = true;
                          transactionIndexedStackIndex = 0;
                        });
                      },
                      child: Container(
                          height: height / 25,
                          width: width / 3.5,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: (isExpense) ? Colors.white : null,
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            'Expense',
                            style: TextStyle(fontSize: 16),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 5),
                      child: VerticalDivider(
                        width: 1,
                        thickness: 2,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isExpense = false;
                          transactionIndexedStackIndex = 1;
                        });
                      },
                      child: Container(
                        height: height / 25,
                        width: width / 3.5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: (!isExpense) ? Colors.white : null,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          'Income',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 5),
                      child: VerticalDivider(
                        width: 1,
                        thickness: 2,
                      ),
                    ),
                    InkWell(
                      onTap: () => showModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                          width: width,
                          child: Column(
                            children: [
                              Center(
                                  child: Text(
                                "Premium lelo",
                                style: TextStyle(fontSize: 40),
                              ))
                            ],
                          ),
                        ),
                      ),
                      child: Container(
                        height: height / 25,
                        width: width / 3.65,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          'Transfer',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height / 30,
            ),
            IndexedStack(
              index: transactionIndexedStackIndex,
              children: [
                AddExpense(),
                AddIncome(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
