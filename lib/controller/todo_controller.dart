import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_mobile/database/db_provider.dart';
import 'package:task_management_mobile/model/todo.dart';

class TodoController extends GetxController {
  static TodoController instance = Get.find();
  RxList listTodos = [].obs;
  TextEditingController todonameInput = TextEditingController();
  void getTodos() async {
    final todos = await DBProvider.dataBase.getAllTodos();

    listTodos.addAll(todos);
    // print(listTodos.length);
  }

  void insertTodo() {
    DBProvider.dataBase.addNewToDo(
      ToDo(1, todonameInput.text, "Day la mo ta", 'url'),
    );
  }
}
