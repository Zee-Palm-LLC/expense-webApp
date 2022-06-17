import 'package:expense_screen/screens/mainscreen.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'data/themedata.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Expense Screen',
          theme: primaryTheme,
          home: child,
        );
      },
      child: const MainScreen(),
    );
  }
}
