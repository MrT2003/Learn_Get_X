import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/pages/home_page.dart';
import 'package:get_x/pages/page_five.dart';
import 'package:get_x/pages/page_four.dart';
import 'package:get_x/pages/page_one.dart';
import 'package:get_x/pages/page_three.dart';
import 'package:get_x/pages/page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Minh Trieu',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const HomePage(),
      getPages: [
        GetPage(name: '/course-page', page: () => const PageThree()),
        GetPage(name: '/more-page/:data', page: () => const PageFour())
      ],
    );
  }
}
