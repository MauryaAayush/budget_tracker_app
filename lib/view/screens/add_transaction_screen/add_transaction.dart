import 'package:flutter/material.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height/90,),
            Container(
              height: height/20,
              width: width,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Expense',style: TextStyle(fontSize: 16),),
                    SizedBox(width: width/25,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: VerticalDivider(width: 1,thickness: 2,),
                    ),
                    SizedBox(width: width/30,),
                    Text('Income',style: TextStyle(fontSize: 16),),
                    SizedBox(width: width/25,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: VerticalDivider(width: 1,thickness: 2,),
                    ),
                    SizedBox(width: width/30,),
                    Text('Transfer',style: TextStyle(fontSize: 16),),
                  ],
                ),
              ),
            ),
            SizedBox(height: height/30,),
            TextField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.currency_rupee),
                suffixIcon: Icon(Icons.calculate_outlined),
                labelText: 'Amount',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: height/70,),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.more_horiz),
                suffixIcon: Icon(Icons.arrow_forward_ios),
                labelText: 'Category',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: height/70,),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.abc),
                suffixIcon: Icon(Icons.arrow_forward_ios),
                labelText: 'Payment mode',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: height/30,),
            Text('Other details',style: TextStyle(fontSize: 16),),
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
          ],
        ),
      ),
    );
  }
}
