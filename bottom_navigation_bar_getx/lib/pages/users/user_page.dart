import 'package:bottom_navigation_bar_getx/pages/add/add_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UsersPage extends StatelessWidget {
  UsersPage({super.key});
  final AddController c = Get.put(AddController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Users Page",
              style: TextStyle(fontSize: 20),
            ),
            const Divider(),
            Obx(
              () => Text(
                '${c.counter.value}',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
