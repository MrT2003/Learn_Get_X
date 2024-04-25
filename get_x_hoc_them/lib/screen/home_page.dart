import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get_x_hoc_them/controller/user_controller.dart';
import 'package:get_x_hoc_them/todo_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put<UserController>(UserController());
    List<UserModel> userList = controller.userList;
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX demo'),
      ),
      body: Obx(
        () => controller.isLoading.value
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: userList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      child: ListTile(
                        title: Text(
                          '${userList[index].userId} and ${userList[index].id}',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          '${userList[index].title}',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        leading: Text('${userList[index].completed}'),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
