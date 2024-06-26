import 'package:budget_tracker_app/utils/transactionData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../utils/color.dart';
import '../../../utils/global_variable.dart';
import 'Components/Catogryicon.dart';

class AddIncome extends StatefulWidget {
  const AddIncome({super.key});

  @override
  State<AddIncome> createState() => _AddIncomeState();
}

class _AddIncomeState extends State<AddIncome> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: txtAmountIncome,
          textInputAction: TextInputAction.next,
          style: TextStyle(color: text),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.currency_rupee,
              color: categoryIconColorList[selectedCategoryIndexIncome],
            ),
            suffixIcon: Icon(Icons.calculate_outlined),
            labelText: 'Amount',
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          height: height / 70,
        ),
        InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                width: width,
                color: Backgruond,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: width / 25, right: width / 29, top: width / 50),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Select Category",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold,color: text),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.close))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: height / 3,
                        width: width,
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4, mainAxisSpacing: 10),
                          itemCount: incomeCategoryList.length,
                          itemBuilder: (context, index) => Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    transactionIncome['category'] =
                                        incomeCategoryList[index]['name'];
                                    transactionIncome['categoryIcon'] =
                                        incomeCategoryList[index]['icon'];
                                    selectedCategoryIndexIncome = index;
                                    Navigator.pop(context);
                                  });
                                },
                                child: Container(
                                  height: height / 20,
                                  width: height / 10,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: incomeCategoryList[index]['icon'],
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              SizedBox(
                                width: height / 10,
                                child: Text(
                                  incomeCategoryList[index]['name'],
                                  style: TextStyle(color: text),
                                  overflow: TextOverflow.fade,
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          child: Container(
            height: 80,
            width: width,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: width / 9,
                    ),
                    Text(
                      "Category",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: width / 29, right: width / 200, top: width / 29),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          categoriesList[selectedCategoryIndexIncome]['icon'],
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            transactionIncome['category'],
                            style: TextStyle(
                                color: text, fontSize: width * 0.045),
                          )
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,color: text,)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            showModalBottomSheet(
              backgroundColor: Backgruond,
              context: context,
              builder: (context) => Padding(
                padding: EdgeInsets.symmetric(horizontal: width / 20),
                child: Column(
                  children: [
                    SizedBox(height: height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Select Payment Mode",
                          style: TextStyle(
                              fontSize: height * 0.023,
                              color: text,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.close))
                      ],
                    ),
                    SizedBox(height: height * 0.04),
                    Row(
                      children: [
                        Icon(
                          Icons.account_balance,
                          color: Colors.lightBlueAccent.shade200,
                        ),
                        SizedBox(width: width * 0.04),
                        Text(
                          "Bank Accounts",
                          style: TextStyle(
                              fontSize: height * 0.018, color: text),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.02),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isCashInIncome = false;
                          transactionIncome['payment'] = "Bank";
                          transactionIncome['paymentIcon'] = Icon(
                            Icons.account_balance,
                            color: Colors.blue,
                          );
                          Navigator.pop(context);
                        });
                      },
                      child: Card(
                        child: ListTile(
                          title: Text(
                            "Bank Account",
                            style: TextStyle(fontSize: height * 0.02),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "*****",
                                style: TextStyle(
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2),
                              ),
                              SizedBox(width: width * 0.02),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Row(
                      children: [
                        Icon(
                          Icons.payments,
                          color: Colors.green.shade400,
                        ),
                        SizedBox(width: width * 0.04),
                        Text(
                          "Cash",
                          style: TextStyle(
                              fontSize: height * 0.018, color: text),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.02),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isCashInIncome = true;
                          transactionIncome['payment'] = "Cash";
                          transactionIncome['paymentIcon'] = Icon(
                            Icons.money,
                            color: Colors.green,
                          );
                          Navigator.pop(context);
                        });
                      },
                      child: Card(
                        child: ListTile(
                          title: Text(
                            "Cash",
                            style: TextStyle(fontSize: height * 0.02),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "*****",
                                style: TextStyle(
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2),
                              ),
                              SizedBox(width: width * 0.02),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          child: Container(
            height: 80,
            width: width,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: width / 9,
                    ),
                    Text(
                      "Payment",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: width / 29, right: width / 120, top: width / 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            (!isCashInIncome)
                                ? Icons.account_balance
                                : Icons.money,
                            color: categoryIconColorList[
                                selectedCategoryIndexIncome],
                            size: width / 15,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            (isCashInIncome) ? "Cash" : "Bank",
                            style: TextStyle(
                                color: text, fontSize: width * 0.045),
                          )
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,color: text,),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: height / 30,
        ),
        Text(
          'Other details',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: height / 35,
        ),
        TextField(
          style: TextStyle(color: text),
          controller: transactionIncome['note'],
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.note_alt_outlined,
              color: categoryIconColorList[selectedCategoryIndexIncome],
            ),
            labelText: 'Write a note',
            labelStyle: TextStyle(color: Colors.grey),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: height / 70,
        ),
        TextField(
          style: TextStyle(color: text),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.numbers,
              color: categoryIconColorList[selectedCategoryIndexIncome],
            ),
            labelText: 'Add tags',
            labelStyle: TextStyle(color: Colors.grey),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: height / 35,
        ),
        ListTile(
          leading: Icon(
            Icons.photo_album_outlined,
            color: categoryIconColorList[selectedCategoryIndexIncome],
          ),
          title: Text('Add photo',style: TextStyle(color: text),),
          trailing: Icon(Icons.arrow_forward_ios,color: text,),
        ),
      ],
    );
  }
}
