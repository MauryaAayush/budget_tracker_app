import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../utils/global_variable.dart';
import 'Components/Catogryicon.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  @override
  Widget build(
      BuildContext context,
      ) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          // controller: ,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.currency_rupee),
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
                                fontSize: 20, fontWeight: FontWeight.bold),
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
                          itemCount: categoriesList.length,
                          itemBuilder: (context, index) => Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    categoryNameShowedInExpense =
                                    categoriesList[index]['name'];
                                    Navigator.pop(context);
                                  });
                                },
                                child: Container(
                                  height: height / 20,
                                  width: height / 10,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: categoriesList[index]['icon'],
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              SizedBox(
                                width: height / 10,
                                child: Text(
                                  categoriesList[index]['name'],
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
                      left: width / 29, right: width / 200, top: width / 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.more_horiz,
                            size: width / 15,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            categoryNameShowedInExpense,
                            style: TextStyle(
                                color: Colors.black, fontSize: width * 0.045),
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
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
                              color: Colors.black,
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
                              fontSize: height * 0.018, color: Colors.black54),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.02),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isCashInExpense = false;
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
                              fontSize: height * 0.018, color: Colors.black54),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.02),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isCashInExpense = true;
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
                      left: width / 29, right: width / 200, top: width / 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.money,
                            size: width / 15,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            (isCashInExpense) ? "Cash" : "Bank",
                            style: TextStyle(
                                color: Colors.black, fontSize: width * 0.045),
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        // TextField(
        //   decoration: InputDecoration(
        //     prefixIcon: Icon(Icons.more_horiz),
        //     suffixIcon: Icon(Icons.arrow_forward_ios),
        //     labelText: 'Category',
        //     focusedBorder: OutlineInputBorder(
        //       borderSide: BorderSide(color: Colors.white),
        //     ),
        //   ),
        // ),
        // SizedBox(
        //   height: height / 70,
        // ),
        // TextField(
        //   decoration: InputDecoration(
        //     prefixIcon: Icon(Icons.payment),
        //     suffixIcon: Icon(Icons.arrow_forward_ios),
        //     labelText: 'Payment mode',
        //     focusedBorder: OutlineInputBorder(
        //       borderSide: BorderSide(color: Colors.white),
        //     ),
        //   ),
        // ),
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
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.note_alt_outlined),
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
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.numbers),
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
          leading: Icon(Icons.photo_album_outlined),
          title: Text('Add photo'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}