import 'package:expense_screen/data/constants.dart';
import 'package:expense_screen/data/typography.dart';
import 'package:expense_screen/model/grocery_model.dart';
import 'package:expense_screen/model/progress_model.dart';
import 'package:expense_screen/widgets/dashboard_buttons.dart';
import 'package:expense_screen/widgets/data_container.dart';
import 'package:expense_screen/widgets/expense_listtile.dart';
import 'package:expense_screen/widgets/newbar.dart';
import 'package:expense_screen/widgets/progreess_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/grocery_model.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          body: Container(
        height: Get.height,
        width: Get.width,
        color: Colors.black,
        child: ListView(
          scrollDirection: Axis.horizontal,
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 580,
              width: 270,
              color: CustomColor.kblack,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.transparent,
                      child: Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                              color: CustomColor.kgrey,
                              borderRadius: BorderRadius.circular(kSmallRadius),
                            ),
                            height: 60,
                            width: 60,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Positioned(
                            left: 50,
                            child: CircleAvatar(
                              backgroundColor: CustomColor.kentcolour,
                              radius: 7,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Samantha",
                      style: TextStyle(
                          fontSize: 18,
                          color: CustomColor.kwhite,
                          fontWeight: kBoldFontWeight),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Samanata@gmail.com",
                        style: TextStyle(
                            fontSize: 12,
                            color: CustomColor.kwhite.withOpacity(0.4),
                            fontWeight: kBoldFontWeight)),
                    const SizedBox(height: 40),
                    DashboardButton(
                      title: 'Dashboard',
                      onpresssed: () {},
                    ),
                    DashboardButton(
                      title: 'Expenses',
                      onpresssed: () {},
                    ),
                    DashboardButton(
                      title: 'Wallets',
                      onpresssed: () {},
                    ),
                    DashboardButton(
                      title: 'Summary',
                      onpresssed: () {},
                    ),
                    DashboardButton(
                      title: 'Accounts',
                      onpresssed: () {},
                    ),
                    DashboardButton(
                      title: 'Setting',
                      onpresssed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: 1000,
              //  width: 980,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kSmallRadius),
                color: Colors.white,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 610,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          child: SizedBox(
                            width: 490,
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Expenses",
                                      style: TextStyle(
                                          color: CustomColor.kblack,
                                          fontSize: 30,
                                          fontWeight: kBoldFontWeight),
                                    ),
                                    Text(
                                      "01 - 25 March, 2020",
                                      style: TextStyle(
                                        color: CustomColor.kgrey,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                SizedBox(
                                  height: 20,
                                  width: 100,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 50,
                                        child: Icon(
                                          Icons.add_circle_outline_outlined,
                                          color: CustomColor.kgrey,
                                          size: 23,
                                        ),
                                      ),
                                      const Positioned(
                                          left: 24,
                                          child: CircleAvatar(
                                            radius: 10,
                                            backgroundColor: Colors.red,
                                          )),
                                      const Positioned(
                                          left: 12,
                                          child: CircleAvatar(
                                            radius: 10,
                                            backgroundColor: Colors.yellow,
                                          )),
                                      const Positioned(
                                          left: 1,
                                          child: CircleAvatar(
                                            radius: 10,
                                            backgroundColor: Colors.indigo,
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Newbar(),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const DateContainer(
                          text: 'Today',
                        ),
                        Expenselisttile(
                          groccerylist: grosslist[0],
                        ),
                        Expenselisttile(
                          groccerylist: grosslist[1],
                        ),
                        Expenselisttile(
                          groccerylist: grosslist[2],
                        ),
                        const DateContainer(
                          text: 'Monday , 23 March 2020',
                        ),
                        Expenselisttile(
                          groccerylist: grosslist[3],
                        ),
                        Expenselisttile(
                          groccerylist: grosslist[4],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: CustomColor.kwhitecont,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(kSmallRadius),
                          bottomRight: Radius.circular(
                            kSmallRadius,
                          )),
                    ),
                    height: 590,
                    width: 365,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text(
                            "Where your money go?",
                            style: TextStyle(
                              color: CustomColor.kblack,
                              fontSize: 14,
                              fontWeight: kBoldFontWeight,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: 240,
                          width: 300,
                          child: ListView.builder(
                            itemCount: expensebar.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ProgressContainer(
                                expensebarper: expensebar[index],
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 40,
                          ),
                          child: Container(
                            height: 200,
                            width: 260,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: CustomColor.kmoneycont,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 30,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Text(
                                    "Save more money",
                                    style: TextStyle(
                                        color: CustomColor.kblack,
                                        fontSize: 14,
                                        fontWeight: kBoldFontWeight),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "The more you save \nthe more you make \n money ",
                                    style: TextStyle(
                                        color: CustomColor.kgrey,
                                        fontSize: 12,
                                        fontWeight: kBoldFontWeight),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 190,
                                    child: ElevatedButton(
                                      child: Text("View Tips".toUpperCase(),
                                          style: const TextStyle(fontSize: 14)),
                                      style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.white),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  CustomColor.kblack),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  side: BorderSide(
                                                      color: CustomColor.kblack)))),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
