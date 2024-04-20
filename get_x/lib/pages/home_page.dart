import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/pages/page_one.dart';
import 'package:get_x/pages/page_two.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(40),
              ),
              gradient: LinearGradient(
                colors: [
                  Colors.grey.shade900,
                  Colors.grey.shade600,
                  Colors.grey.shade900
                ],
              ),
            ),
            child: const Center(
              child: Text(
                'GetX',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 20,
              padding: const EdgeInsets.all(10),
              child: TextField(
                autocorrect: true,
                decoration: InputDecoration(
                  hintText: 'Search GetX..',
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white70,
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(color: Colors.grey.shade100),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          RichText(
            text: TextSpan(
              text: 'First GetX',
              recognizer: TapGestureRecognizer()
                ..onTap = () => Get.to(() => PageOne()),
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              text: 'Explore GetX',
              recognizer: TapGestureRecognizer()
                ..onTap = () => Get.to(
                      () => PageTwo(),
                      arguments: {
                        'price': Random().nextInt(10000).toString(),
                        'text': 'The course price is USD',
                      },
                    ),
              style: TextStyle(color: Colors.grey.shade600, fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Divider(),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Navigate named routes',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              height: 300,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
                gradient: LinearGradient(
                  colors: [Colors.grey, Colors.black, Colors.grey],
                ),
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 200,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            // primary: Colors.grey.shade300,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () => Get.toNamed(
                            '/course-page',
                            arguments: {
                              'price': Random().nextInt(10000).toString(),
                            },
                          ),
                          child: Text(
                            'Course',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey.shade900,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        width: 200,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFffbc33e),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            // primary: Colors.grey.shade300,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () => Get.toNamed(
                              '/more-page/${Random().nextInt(1000)}'),
                          child: Text(
                            'More',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey.shade900,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
