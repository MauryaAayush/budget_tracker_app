import 'dart:io';

import 'package:budget_tracker_app/utils/transactionData.dart';
import 'package:flutter/material.dart';

bool analtic = true;
bool switchValue = false;
bool isExpense = true;
int transactionIndexedStackIndex = 0;
String categoryNameShowedInIncome = 'Others';
String categoryNameShowedInExpense = 'Others';
bool isCashInExpense = true;
bool isCashInIncome = true;
int selectedCategoryIndexExpense = 0;
int selectedCategoryIndexIncome = 0;
TextEditingController txtAmountExpense = TextEditingController();
TextEditingController txtExpenseNote = TextEditingController();
TextEditingController txtAmountIncome = TextEditingController();
TextEditingController txtIncomeNote = TextEditingController();
bool showText = false;
bool isEditing = false;
int isEditingIndex = 0;
double spending = 0, income = 0, balance = 0;

Map<String, double> dataMapIncome = {
  'Flutter': 0,
};
Map<String, double> dataMapEaxpens = {
  'Flutter': 0,
};

File? imgPath;

String? textname1;
String? textMobileNum1;
String? textConfirm1;
String? textEmail1;
String? textPassword1;

String spendingCounting() {
  double sum = 0;
  for (int i = 0; i < transactionData.length; i++) {
    sum += (transactionData[i]['isExpense'])
        ? int.parse(transactionData[i]['amount'])
        : 0;
  }
  spending = sum;
  return sum.toString();
}

String earningCounting() {
  double sum = 0;
  for (int i = 0; i < transactionData.length; i++) {
    sum += (transactionData[i]['isExpense'] == false)
        ? int.parse(transactionData[i]['amount'])
        : 0;
  }
  income = sum;
  return sum.toString();
}

double countBalance() {
  balance = income - spending;
  return balance;
}

int analyticsIndexedStack = 0;
