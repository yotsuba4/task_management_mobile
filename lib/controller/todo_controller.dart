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
    listTodos.assignAll(todos);
    update();
  }

  void insertTodo() {
    DBProvider.dataBase.addNewToDo(
      ToDo(todonameInput.text, "Day la mo ta"),
    );
  }

  void getTodoById() async {
    todo(await DBProvider.dataBase.getTodo('td1'));
    print(todo.value.name);
  }
}
