import 'package:expense_screen/data/constants.dart';
import 'package:expense_screen/data/typography.dart';
import 'package:expense_screen/model/progress_model.dart';
import 'package:flutter/material.dart';

class ProgressContainer extends StatelessWidget {
  final ProgressBarCont expensebarper;
  const ProgressContainer({
    Key? key,
    required this.expensebarper,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, bottom: 10),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                expensebarper.expensename,
                style: TextStyle(
                  color: CustomColor.ktextgrey,
                  fontSize: 12,
                  fontWeight: kBoldFontWeight,
                ),
              ),
              const Spacer(),
              Text(
                expensebarper.expensevalue.toString(),
                style: TextStyle(
                  color: CustomColor.ktextgrey,
                  fontSize: 12,
                  fontWeight: kBoldFontWeight,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          LinearProgressIndicator(
            value: expensebarper.expensepercent,
            color: CustomColor.kgreenprogress,
            backgroundColor: CustomColor.kgrey,
            minHeight: 4,
          )
        ],
      ),
    );
  }
}
