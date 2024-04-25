import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_hoc_them/controller.dart';

class CounterPage extends StatelessWidget {
  CounterPage({super.key});
  final Controller counter = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text('Counter is ${counter.count.value}'),
            ),
            ElevatedButton(
              onPressed: () => counter.increment(),
              child: Text('click'),
            ),
          ],
        ),
      ),
    );
  }
}
