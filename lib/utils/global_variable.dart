import 'dart:io';

import 'package:flutter/cupertino.dart';

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
