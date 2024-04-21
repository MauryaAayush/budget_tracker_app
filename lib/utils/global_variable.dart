import 'dart:io';

import 'package:budget_tracker_app/utils/transactionData.dart';
import 'package:flutter/material.dart';

bool Singup = false;
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
int expenseLengthTransaction = 0;
int incomeLengthTransaction = 0;
double spending = 0, income = 0, balance = 0;

String selectedCurrencyToShow = "INR";
String currencyCode = "\u20B9";

Map<String, double> dataMapIncome = {
  'Other': 0,
};
Map<String, double> dataMapEaxpens = {
  'Other': 0,
};

File? imgPath;

String? textname1;
String? textMobileNum1;
String? textConfirm1;
String? textEmail1;
String? textPassword1;

String spendingCounting() {
  double sum = 0;
  int expenseLength = 0;
  for (int i = 0; i < transactionData.length; i++) {
    sum += (transactionData[i]['isExpense'])
        ? int.parse(transactionData[i]['amount'])
        : 0;
  }
  for (int i = 0; i < transactionData.length; i++) {
    if (transactionData[i]['isExpense']) {
      expenseLength++;
    }
  }
  expenseLengthTransaction = expenseLength;
  spending = sum;
  return sum.toString();
}

String earningCounting() {
  int incomeLength = 0;
  double sum = 0;
  for (int i = 0; i < transactionData.length; i++) {
    sum += (transactionData[i]['isExpense'] == false)
        ? int.parse(transactionData[i]['amount'])
        : 0;
  }
  for (int i = 0; i < transactionData.length; i++) {
    if (!transactionData[i]['isExpense']) {
      incomeLength++;
    }
  }
  incomeLengthTransaction = incomeLength;
  income = sum;
  return sum.toString();
}

double countBalance() {
  balance = income - spending;
  return balance;
}

void currencyChanger() {
  if (selectedCurrencyToShow == "INR") {
    currencyCode = "\u20B9";
  } else if (selectedCurrencyToShow == "USD") {
    currencyCode = "\$";
  } else if (selectedCurrencyToShow == "CAD") {
    currencyCode = "C\$";
  } else if (selectedCurrencyToShow == "JPY") {
    currencyCode = "¥";
  } else if (selectedCurrencyToShow == "EUR") {
    currencyCode = "€";
  }
}

int analyticsIndexedStack = 0;
int weekMonthYear = 1;
