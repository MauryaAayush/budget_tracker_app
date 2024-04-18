import 'package:flutter/cupertino.dart';

import 'global_variable.dart';
import 'package:flutter/material.dart';

List transactionData = [];

Map transactionExpense = {
  'category': "Others",
  'payment': "Cash",
  'categoryIcon': Icon(Icons.more_horiz),
  'paymentIcon': Icon(
    Icons.money,
    color: Colors.green,
  ),
  'note': txtExpenseNote,
  'isExpense': true,
};

Map transactionIncome = {
  'category': "Others",
  'payment': "Cash",
  'categoryIcon': Icon(Icons.more_horiz),
  'paymentIcon': Icon(
    Icons.money,
    color: Colors.green,
  ),
  'note': txtIncomeNote,
  'isExpense': false,
};
