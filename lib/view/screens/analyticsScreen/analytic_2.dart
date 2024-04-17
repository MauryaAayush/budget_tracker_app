import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import '../../../utils/global_variable.dart';

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
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 15),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    'Analysis',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Icon(
                    Icons.download,
                    color: Colors.black,
                  )
                ],
              ),
              SizedBox(
                height: height / 90,
              ),
              Container(
                height: height / 20,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Row(
                    children: [
                      Text(
                        'Week',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: width / 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: VerticalDivider(
                          width: 1,
                          thickness: 2,
                        ),
                      ),
                      SizedBox(
                        width: width / 30,
                      ),
                      Text(
                        'Month',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: width / 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: VerticalDivider(
                          width: 1,
                          thickness: 2,
                        ),
                      ),
                      SizedBox(
                        width: width / 30,
                      ),
                      Text(
                        'Year',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: width / 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: VerticalDivider(
                          width: 1,
                          thickness: 2,
                        ),
                      ),
                      SizedBox(
                        width: width / 30,
                      ),
                      Text(
                        'Custom',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios),
                  Text(
                    'April 2024',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
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
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(35)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white54,
                            child: Icon(
                              Icons.arrow_upward,
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
                                'Spending',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: height / 50,
                                ),
                              ),
                              Text(
                                '\$0.00',
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
                                '\$0.00',
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
                    color: Colors.black12, borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text(
                      "Balance:1,000.0",
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              ListTile(
                leading: Text(
                  "Trends",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,

                        // offset: const Offset(1, 5),
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    children: [
                      Text(
                        "Discover Financial Trends",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Gain insights into your sepending patterns with",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "trend analysis in premium.",
                        style: TextStyle(fontSize: 15),
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
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                height: height / 2.3,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,

                        // offset: const Offset(1, 5),
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ]
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Text("Category-Wise Spending",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                    ),
                    // graph ////----------------------------------------
                    Container(
                      height: height/3.5,
                      width: width,
                      // decoration: BoxDecoration(color: Colors.blue),
                      child:
                      Center(
                        child: PieChart(
                          totalValue: 10,
                          dataMap: dataMap,
                          animationDuration: Duration(milliseconds: 800),
                          chartLegendSpacing: 32,
                          chartRadius: MediaQuery.of(context).size.width / 2.7,
                          colorList: [Colors.blue, Colors.green, Colors.red, Colors.yellow],
                           initialAngleInDegree: 10,
                          chartType: ChartType.ring,
                          ringStrokeWidth: 34,
                          centerText: " Chart",
                          legendOptions: LegendOptions(
                            showLegendsInRow: true,
                            legendPosition: LegendPosition.bottom,
                            showLegends: true,
                            legendShape: BoxShape.circle,
                            legendTextStyle: TextStyle(
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
                              height: height/10.9,
                              width: width/9,
                              decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black12),
                              child: Icon(Icons.more_horiz)),
                          SizedBox(width: width/15,),
                          Text("Others",style: TextStyle(fontSize: 18),),
                          SizedBox(width: width/2.9,),
                          Text("1,000.0",style: TextStyle(fontSize: 18),),
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
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),

              ),
              Container(
                height: height / 6.4,
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
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Spending",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      SizedBox(
                        height: height / 30,
                      ),
                      Row(
                        children: [
                          Icon(Icons.indeterminate_check_box,color: Colors.green, size: 28,),
                          SizedBox(width: width/15,),
                          Text("Cash",style: TextStyle(fontSize: 18,),),
                          SizedBox(width: width/2.3,),
                          Text("1,000.0",style: TextStyle(fontSize: 18),),

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
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),

              ),
              Container(
                height: height / 2.9,
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
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Number of transactions",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                          SizedBox(width: width/4.9,),
                          Text("2",style: TextStyle(fontSize: 18,),),
                        ],
                      ),

                      SizedBox(height: height/60,),
                      Text("Average spending",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
                      SizedBox(height: height/80,),
                      Row(
                        children: [
                          Text("Per day",style: TextStyle(fontSize: 16,),),
                          SizedBox(width: width/1.9,),
                          Text("62.5",style: TextStyle(fontSize: 18,),),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Per trandaction",style: TextStyle(fontSize: 18,),),
                          SizedBox(width: width/3,),
                          Text("500.0",style: TextStyle(fontSize: 18,),),
                        ],
                      ),
                      SizedBox(height: height/60,),
                      Text("Average income",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
                      SizedBox(height: height/80,),
                      Row(
                        children: [
                          Text("Per day",style: TextStyle(fontSize: 16,),),
                          SizedBox(width: width/1.9,),
                          Text("0.00",style: TextStyle(fontSize: 18,),),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Per trandaction",style: TextStyle(fontSize: 18,),),
                          SizedBox(width: width/2.9,),
                          Text("0.00",style: TextStyle(fontSize: 18,),),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ));
  }
}