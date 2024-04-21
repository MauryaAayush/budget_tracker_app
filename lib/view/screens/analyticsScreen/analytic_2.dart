import 'package:budget_tracker_app/utils/transactionData.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import '../../../utils/color.dart';
import '../../../utils/global_variable.dart';
import '../Add_Transaction/Components/Catogryicon.dart';

class Analytics2 extends StatefulWidget {
  const Analytics2({super.key});

  @override
  State<Analytics2> createState() => _Analytics2State();
}

class _Analytics2State extends State<Analytics2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: height / 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: height * 0.07,
                width: width * 0.4,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(35)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white54,
                      child: Icon(
                        Icons.arrow_upward,
                        color: text,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Spending',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: height / 50,
                          ),
                        ),
                        Text(
                          '$currencyCode${spendingCounting()}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: height / 60,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            // green button
            InkWell(
              onTap: () {},
              child: Container(
                height: height * 0.07,
                width: width * 0.4,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(35)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white54,
                      child: Icon(
                        Icons.arrow_downward,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Income',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: height / 50,
                          ),
                        ),
                        Text(
                          '$currencyCode${earningCounting()}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: height / 60,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: height / 30,
        ),
        Container(
          height: height / 17.9,
          width: width / 2,
          decoration: BoxDecoration(
              color: boder, borderRadius: BorderRadius.circular(15)),
          child: Center(
              child: Text(
            "Balance:$currencyCode${countBalance()}",
            style: TextStyle(fontSize: 18,color: text),
          )),
        ),
        ListTile(
          leading: Text(
            "Trends",
            style: TextStyle(color: text,fontSize: 25, fontWeight: FontWeight.w500),
          ),
          title: Row(
            children: [
              Image.asset("assets/img/logo.png", width: 30, height: 30),
              SizedBox(width: 10),
            ],
          ),
        ),
        Container(
          height: height / 4.5,
          width: width,
          decoration: BoxDecoration(
              color: Contain,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color:boder,
                  //Colors.grey.shade300,

                  // offset: const Offset(1, 5),
                  blurRadius: 0.2,
                  spreadRadius: 1,
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Text(
                  "Discover Financial Trends",
                  style: TextStyle(color: text,fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Gain insights into your sepending patterns with",
                  style: TextStyle(color: text,fontSize: 15),
                ),
                Text(
                  "trend analysis in premium.",
                  style: TextStyle(color: text,fontSize: 15),
                ),
                SizedBox(
                  height: height / 30,
                ),
                Container(
                  height: height / 17.9,
                  width: width / 2,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                    "Upgrade Now",
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  )),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: height / 60,
        ),
        ListTile(
          leading: Text(
            "Categories",
            style: TextStyle(color: text,fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          height: height / 2.3,
          width: width,
          decoration: BoxDecoration(
              color: Contain,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: boder,

                  // offset: const Offset(1, 5),
                  blurRadius: 0.2,
                  spreadRadius: 1,
                )
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  "Category-Wise Spending",
                  style: TextStyle(color:text,fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              // graph ////----------------------------------------
              Container(
                height: height / 3.5,
                width: width,
                // decoration: BoxDecoration(color: Colors.blue),
                child: Center(
                  child: PieChart(
                    dataMap: dataMapEaxpens,
                    animationDuration: Duration(milliseconds: 800),
                    chartLegendSpacing: 32,
                    chartRadius: MediaQuery.of(context).size.width / 2.7,
                    colorList: categoryIconColorList,
                    initialAngleInDegree: 10,
                    chartType: ChartType.ring,
                    ringStrokeWidth: 34,
                    centerText: "Eaxpens Chart",
                    legendOptions: LegendOptions(
                      showLegendsInRow: true,
                      legendPosition: LegendPosition.bottom,
                      showLegends: true,
                      legendShape: BoxShape.circle,
                      legendTextStyle: TextStyle(
                        color: text,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    chartValuesOptions: ChartValuesOptions(
                      showChartValueBackground: true,
                      showChartValues: true,
                      showChartValuesInPercentage: true,
                      showChartValuesOutside: false,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Container(
                        height: height / 10.9,
                        width: width / 9,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: boder),
                        child: Icon(Icons.more_horiz)),
                    SizedBox(
                      width: width / 15,
                    ),
                    Text(
                      "Others",
                      style: TextStyle(color: text,fontSize: 18),
                    ),
                    SizedBox(
                      width: width / 2.9,
                    ),
                    Text(
                      "1,000.0",
                      style: TextStyle(color: text,fontSize: 18),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: height / 60,
        ),
        Container(
          height: height / 2.3,
          width: width,
          decoration: BoxDecoration(
              color: Contain,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color:boder,

                  // offset: const Offset(1, 5),
                  blurRadius: 0.2,
                  spreadRadius: 1,
                )
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  "Category-Wise Income",
                  style: TextStyle(color: text,fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              // graph ////----------------------------------------
              Container(
                height: height / 3.5,
                width: width,
                // decoration: BoxDecoration(color: Colors.blue),
                child: Center(
                  child: PieChart(
                    dataMap: dataMapIncome,
                    animationDuration: Duration(milliseconds: 800),
                    chartLegendSpacing: 32,
                    chartRadius: MediaQuery.of(context).size.width / 2.7,
                    colorList: categoryIconColorList,
                    initialAngleInDegree: 10,
                    chartType: ChartType.ring,
                    ringStrokeWidth: 34,
                    centerText: "Income Chart",
                    legendOptions: LegendOptions(
                      showLegendsInRow: true,
                      legendPosition: LegendPosition.bottom,
                      showLegends: true,
                      legendShape: BoxShape.circle,
                      legendTextStyle: TextStyle(
                        color: text,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    chartValuesOptions: ChartValuesOptions(
                      showChartValueBackground: true,
                      showChartValues: true,
                      showChartValuesInPercentage: true,
                      showChartValuesOutside: false,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Container(
                        height: height / 10.9,
                        width: width / 9,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: boder),
                        child: Icon(Icons.more_horiz)),
                    SizedBox(
                      width: width / 15,
                    ),
                    Text(
                      "Others",
                      style: TextStyle(color: text,fontSize: 18),
                    ),
                    SizedBox(
                      width: width / 2.9,
                    ),
                    Text(
                      "1,000.0",
                      style: TextStyle(color: text,fontSize: 18),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: height / 60,
        ),
        ListTile(
          leading: Text(
            "Payment modes",
            style: TextStyle(color: text,fontSize: 25, fontWeight: FontWeight.w500),

          ),
        ),
        Container(
          height: height / 6.4,
          width: width,
          decoration: BoxDecoration(
              color: Contain,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: boder,
                  blurRadius: 0.2,
                  spreadRadius: 1,
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Spending",
                  style: TextStyle(color: text,fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: height / 30,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.indeterminate_check_box,
                      color: Colors.green,
                      size: 28,
                    ),
                    SizedBox(
                      width: width / 15,
                    ),
                    Text(
                      "Cash",
                      style: TextStyle(
                        color: text,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: width / 2.3,
                    ),
                    Text(
                      "1,000.0",
                      style: TextStyle(color: text,fontSize: 18),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: height / 60,
        ),
        ListTile(
          leading: Text(
            "Stats",
            style: TextStyle(color: text,fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          height: height / 2.9,
          width: width,
          decoration: BoxDecoration(
              color: Contain,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: boder,
                  blurRadius: 0.2,
                  spreadRadius: 1,
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Number of transactions",
                      style:
                          TextStyle(color: text,fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: width / 4.9,
                    ),
                    Text(
                      "${transactionData.length}",
                      style: TextStyle(
                        color: text,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 60,
                ),
                Text("Average spending",
                    style:
                        TextStyle(color: text,fontSize: 18, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: height / 80,
                ),
                Row(
                  children: [
                    Text(
                      "Per trandaction",
                      style: TextStyle(
                        color: text,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: width / 3,
                    ),
                    Text(
                      "$currencyCode${spending / expenseLengthTransaction!}",
                      style: TextStyle(
                        color: text,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 60,
                ),
                Text("Average income",
                    style:
                        TextStyle(color: text,fontSize: 18, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: height / 80,
                ),
                Row(
                  children: [
                    Text(
                      "Per trandaction",
                      style: TextStyle(
                        color: text,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: width / 2.9,
                    ),
                    Text(
                      "$currencyCode${income / incomeLengthTransaction!}",
                      style: TextStyle(
                        color: text,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
