import 'package:app_get_x/pages/content_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF69c5df),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              height: 700,
              child: Container(
                height: 700,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('img/background.jpg'),
                    fit: BoxFit.cover, /*Khi nào dùng cover, fill, contain */
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Pick Your Favourite',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'Contests',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 25,
                    child: const Text(
                      'We make great design work '
                      'happen with our great community designer',
                      style: TextStyle(
                        color: Colors.white60,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 200,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // color: C,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFffbc33e),
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () => Get.to(() => const ContentPage()),
                      child: const Text(
                        'Get Started',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
