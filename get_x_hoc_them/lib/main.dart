import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_hoc_them/controller_binding.dart';
import 'package:get_x_hoc_them/screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Minh Trieu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: ControllerBinding(),
      home: HomePage(),
    );
  }
}
