import 'package:expense_screen/data/constants.dart';
import 'package:flutter/material.dart';

class GroceryList {
  final String gname;
  final double gprice;
  final String glocation;
  final Color gcolor;
  GroceryList({
    required this.glocation,
    required this.gname,
    required this.gprice,
    required this.gcolor,
  });
}

List<GroceryList> grosslist = [
  GroceryList(
      glocation: "5:12 . Chase Value Center",
      gname: "Grocery",
      gprice: 328.800,
      gcolor: CustomColor.kgroscircle),
  GroceryList(
      glocation: "5:12 . Chase Value Center",
      gname: "Transportation",
      gprice: 185.750,
      gcolor: CustomColor.ktranscir),
  GroceryList(
      glocation: "5:12 . Chase Value Center",
      gname: "Housing",
      gprice: 185.750,
      gcolor: CustomColor.khouseorange),
  GroceryList(
      glocation: "5:12 . Chase Value Center",
      gname: "Food and Drink",
      gprice: 156.000,
      gcolor: CustomColor.kfoodanddrinkcolor),
  GroceryList(
      glocation: "5:12 . Chase Value Center",
      gname: "Entertainment",
      gprice: 35.200,
      gcolor: CustomColor.kentcolour),
];
