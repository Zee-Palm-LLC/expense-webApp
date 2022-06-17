import 'package:expense_screen/data/constants.dart';
import 'package:expense_screen/data/typography.dart';
import 'package:flutter/material.dart';

class DashboardButton extends StatelessWidget {
  final String title;
  final Function onpresssed;
  const DashboardButton({
    Key? key,
    required this.title,
    required this.onpresssed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            color: CustomColor.kwhite.withOpacity(0.4),
            fontWeight: kBoldFontWeight,
          ),
        ),
      ),
    );
  }
}
