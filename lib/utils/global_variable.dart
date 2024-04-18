import 'dart:io';

import 'package:flutter/material.dart';

bool switchValue = false;
bool isExpense = true;
int transactionIndexedStackIndex = 0;
String categoryNameShowedInIncome = 'Others';
String categoryNameShowedInExpense = 'Others';
bool isCashInExpense = true;
bool isCashInIncome = true;
TextEditingController txtAmountExpense = TextEditingController();
TextEditingController txtExpenseNote = TextEditingController();
TextEditingController txtAmountIncome = TextEditingController();
TextEditingController txtIncomeNote = TextEditingController();



Map<String, double> dataMap = {
  'Flutter': 5,
  'Dart': 3,
  'Pie': 2,
  'Chart': 2,
};

File? imgPath;

String ?textname1;
String ?textMobileNum1;
String ?textConfirm1;
String ?textEmail1;
String ?textPassword1;