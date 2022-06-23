import 'package:expense_screen/data/constants.dart';
import 'package:expense_screen/data/typography.dart';
import 'package:flutter/material.dart';

import '../model/grocery_model.dart';

class Expenselisttile extends StatelessWidget {
  final GroceryList groccerylist;
  const Expenselisttile({
    Key? key,
    required this.groccerylist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 55),
      child: SizedBox(
        //  width: 468,
        child: ListTile(
          visualDensity: const VisualDensity(vertical: -4, horizontal: 0),
          leading: CircleAvatar(
            backgroundColor: groccerylist.gcolor,
            radius: 16,
            child: Icon(
              Icons.shopping_cart,
              color: CustomColor.kwhite,
            ),
          ),
          title: Text(
            groccerylist.gname,
            style: TextStyle(
                fontSize: 11,
                fontWeight: kBoldFontWeight,
                color: CustomColor.kblack),
          ),
          subtitle: Text(groccerylist.glocation,
              style: TextStyle(fontSize: 8, color: CustomColor.kgrey)),
          trailing: Text(groccerylist.gprice.toString(),
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: kBoldFontWeight,
                  color: CustomColor.kblack)),
        ),
      ),
    );
  }
}
