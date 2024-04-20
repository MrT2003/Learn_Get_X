import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.grey.shade900,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Get.arguments['price'] ?? 'Exploration Page',
            ),
            Text(
              Get.arguments['text'] ?? 'Nothing to show',
              style: TextStyle(
                fontSize: 30,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
