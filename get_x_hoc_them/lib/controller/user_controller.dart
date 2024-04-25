import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:get_x_hoc_them/todo_model.dart';

class UserController extends GetxController {
  var userList = <UserModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getUser();
  }

  void getUser() async {
    String url = 'https://jsonplaceholder.typicode.com/todos';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List;
      userList.value = json.map((e) => TodoModel.fromJson(e)).toList();
      isLoading.value = false;
      update();
    } else {
      Get.snackbar('Error Loading data!',
          'Server responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
    }
  }
}
