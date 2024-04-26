import 'package:app_get_x/pages/content_page.dart';
import 'package:app_get_x/pages/my_detail_page.dart';
import 'package:app_get_x/pages/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => MyHomePage()),
        GetPage(name: '/detail', page: () => DetailPage()),
      ],
    );
  }
}
