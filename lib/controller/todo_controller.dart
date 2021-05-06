import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_mobile/database/db_provider.dart';
import 'package:task_management_mobile/model/todo.dart';

class TodoController extends GetxController {
  static TodoController instance = Get.find();
  RxList listTodos = [].obs;
  Rx<ToDo> todo;
  TextEditingController todonameInput = TextEditingController();
  void getTodos() async {
    final todos = await DBProvider.dataBase.getAllTodos();
    print(listTodos.length);
    listTodos.addAll(todos);
  }

  void insertTodo() {
    DBProvider.dataBase.addNewToDo(
      ToDo(1, todonameInput.text, "Day la mo ta", 'url'),
    );
  }

  void getTodoById() async {
    todo(await DBProvider.dataBase.getTodo(1));
    print(todo.value.name);
  }
}
