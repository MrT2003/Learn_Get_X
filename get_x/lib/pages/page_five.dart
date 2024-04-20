import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/pages/home_page.dart';

class PageFive extends StatelessWidget {
  const PageFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFffbc33e)),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              // primary: Colors.grey.shade300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            onPressed: () => Get.to(() => HomePage()),
            child: Text(
              "Home",
              style: TextStyle(fontSize: 20, color: Colors.grey.shade900),
            ),
          ),
        ),
      ),
    );
  }
}
