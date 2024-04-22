import 'package:bottom_navigation_bar_getx/pages/dashboard/dashBoard_binding.dart';
import 'package:bottom_navigation_bar_getx/pages/dashboard/my_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Minh Trieu",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => MyDashBoard(),
          binding: DashBoardBinding(),
        ),
      ],
      // home: MyDashBoard(),
    );
  }
}
