import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get_x/pages/page_five.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black26,
        ),
        title: const Text('Page Four'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                //  primary: Colors.transparent,
              ),
              onPressed: () => Get.to(() => PageFive()),
              child: const Text(
                "Go to Home",
                style: TextStyle(fontSize: 40, color: Colors.grey),
              ),
            ),
            const Divider(),
            const Text(
              'Page Four',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
