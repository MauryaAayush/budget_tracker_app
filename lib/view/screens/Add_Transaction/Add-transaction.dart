import 'package:budget_tracker_app/utils/transactionData.dart';
import 'package:budget_tracker_app/view/screens/Add_Transaction/AddIncome.dart';
import 'package:budget_tracker_app/view/screens/Add_Transaction/addExpense.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/global_variable.dart';

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
        leading: IconButton(
          onPressed: () {
            txtExpenseNote.clear();
            txtAmountExpense.clear();

            txtIncomeNote.clear();
            txtAmountIncome.clear();
            isExpense = true;

            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
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
        onPressed: () {
          // String tempAmount = transactionExpense[0]['amount'].text;
          // String tempAmountI = transactionIncome[0]['amount'].text;
          if ((isExpense && txtAmountExpense.text.isNotEmpty && !isEditing) ||
              (!isExpense && txtAmountIncome.text.isNotEmpty && !isEditing)) {
            if (!isEditing) {
              Map map = {
                'amount': txtAmountExpense.text,
                'category': transactionExpense['category'],
                'payment': transactionExpense['payment'],
                'categoryIcon': transactionExpense['categoryIcon'],
                'paymentIcon': transactionExpense['paymentIcon'],
                'note': txtExpenseNote.text,
                'categoryIconColor': selectedCategoryIndexExpense,
                'isExpense': true,
              };

              Map map1 = {
                'amount': txtAmountIncome.text,
                'category': transactionIncome['category'],
                'payment': transactionIncome['category'],
                'categoryIcon': transactionIncome['categoryIcon'],
                'paymentIcon': transactionIncome['paymentIcon'],
                'note': txtIncomeNote.text,
                'categoryIconColor': selectedCategoryIndexIncome,
                'isExpense': false,
              };

              setValuesDefault();

              (isExpense)
                  ? transactionData.add(map)
                  : transactionData.add(map1);

              txtAmountExpense.clear();
              txtAmountIncome.clear();
              txtIncomeNote.clear();
              txtExpenseNote.clear();
              isExpense = true;

                for(int i=0; i<transactionData.length; i++)
                {
                  if(transactionData[i]['isExpense']){dataMapEaxpens.putIfAbsent(transactionData[i]['category'], () => double.parse(transactionData[i]['amount']));}
                }
              for(int i=0; i<transactionData.length; i++)
              {
                if(transactionData[i]['isExpense']==false){
                dataMapIncome.putIfAbsent(transactionData[i]['category'], () => double.parse(transactionData[i]['amount']));}
              }


              Navigator.pushReplacementNamed(context, '/bottem');
            } else {
              setState(() {
                showText = true;
                invalidInputTimer();
              });
            }
          } else {
            if (isExpense) {
              transactionData[isEditingIndex]['amount'] = txtAmountExpense.text;
              transactionData[isEditingIndex]['categoryIcon'] =
                  transactionExpense['categoryIcon'];
              transactionData[isEditingIndex]['paymentIcon'] =
                  transactionExpense['paymentIcon'];
              transactionData[isEditingIndex]['isExpense'] = true;
              isEditing = false;
              Navigator.pushReplacementNamed(context, '/bottem');
            } else {
              transactionData[isEditingIndex]['amount'] = txtAmountIncome.text;
              transactionData[isEditingIndex]['categoryIcon'] =
                  transactionIncome['categoryIcon'];
              transactionData[isEditingIndex]['paymentIcon'] =
                  transactionIncome['paymentIcon'];
              transactionData[isEditingIndex]['isExpense'] = false;
              isEditing = false;
              Navigator.pushReplacementNamed(context, '/bottem');
            }
          }

          // txtExpenseNote.clear();
          // txtIncomeNote.clear();
          // transactionIncome.remove('amount');
        },
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
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
      ),
    );
  }

  void invalidInputTimer() {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        showText = false;
      });
    });
  }

  void setValuesDefault() {
    setState(() {
      transactionExpense['category'] = "Others";
      transactionExpense['payment'] = "Cash";
      transactionExpense['categoryIcon'] = Icon(
        Icons.more_horiz,
      );
      transactionIncome['categoryIcon'] = Icon(Icons.more_horiz);
      transactionIncome['paymentIcon'] = Icon(
        Icons.money,
        color: Colors.green,
      );
      transactionExpense['paymentIcon'] = Icon(
        Icons.money,
        color: Colors.green,
      );
      transactionIndexedStackIndex = 0;
      selectedCategoryIndexExpense = 0;
      selectedCategoryIndexIncome = 0;
    });
  }
}
