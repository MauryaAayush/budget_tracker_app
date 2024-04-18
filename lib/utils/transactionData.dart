import 'package:flutter/cupertino.dart';

import 'global_variable.dart';
import 'package:flutter/material.dart';

List transactionData = [];

Map transactionExpense = {
  'amount': null,
  'category': "Others",
  'payment': "Cash",
  'categoryIcon': Icon(Icons.more_horiz),
  'paymentIcon': Icon(Icons.food_bank),
  'note': txtExpenseNote,
  'isExpense': true,
};

Map transactionIncome = {
  'amount': null,
  'category': "Others",
  'payment': "Cash",
  'categoryIcon': Icon(Icons.more_horiz),
  'paymentIcon': Icon(Icons.food_bank),
  'note': txtIncomeNote,
  'isExpense': false,
};
