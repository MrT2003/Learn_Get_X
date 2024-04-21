import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MyController extends GetxController {
  var books = 0.obs;
  var pens = 0.obs;
  int get sum => books.value + pens.value;

  void increment() {
    books.value++;
  }

  void decrement() {
    if (books.value <= 0) {
      Get.snackbar(
        'Buying Books',
        'Cannot be less than zero',
        icon: Icon(Icons.alarm),
        barBlur: 20,
        isDismissible: true,
        duration: Duration(seconds: 3),
      );
    } else {
      books.value--;
    }
  }

  void penIncrement() {
    pens.value++;
  }

  void penDecrement() {
    if (pens.value <= 0) {
      Get.snackbar(
        'Buying Pens',
        'Cannot be less than zero',
        icon: Icon(Icons.alarm),
        // barBlur: 20,
        isDismissible: true,
        duration: Duration(seconds: 3),
      );
    } else {
      pens.value--;
    }
  }
}
