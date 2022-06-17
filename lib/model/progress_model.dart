import 'package:flutter/material.dart';

class ProgressBarCont {
  final String expensename;
  final double expensevalue;
  final double expensepercent;
  ProgressBarCont({
    required this.expensepercent,
    required this.expensename,
    required this.expensevalue,
  });
}

List<ProgressBarCont> expensebar = [
  ProgressBarCont(
      expensename: "Food And Drinks",
      expensevalue: 872.400,
      expensepercent: 0.5),
  ProgressBarCont(
      expensename: "Shopping", expensevalue: 928.500, expensepercent: 0.8),
  ProgressBarCont(
      expensename: "housing", expensevalue: 239.000, expensepercent: 0.5),
  ProgressBarCont(
      expensename: "Transportation",
      expensevalue: 420.700,
      expensepercent: 0.3),
  ProgressBarCont(
      expensename: "Vechile", expensevalue: 520.000, expensepercent: 0.4),
];
