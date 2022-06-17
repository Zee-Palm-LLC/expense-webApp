import 'package:expense_screen/data/constants.dart';
import 'package:expense_screen/data/typography.dart';
import 'package:expense_screen/model/progress_model.dart';
import 'package:expense_screen/widgets/newbar.dart';
import 'package:flutter/material.dart';

class DateContainer extends StatelessWidget {
  final String text;
  const DateContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: SizedBox(
        height: 30,
        width: 465,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontWeight: kBoldFontWeight,
                      fontSize: 12,
                      color: CustomColor.kblack),
                ),
                const Spacer(),
                Icon(
                  Icons.more_horiz,
                  color: CustomColor.kgrey,
                  size: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
