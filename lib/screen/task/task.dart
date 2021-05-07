import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_mobile/controller/todo_controller.dart';
import 'package:task_management_mobile/screen/create_task/create_task.dart';
import 'package:task_management_mobile/screen/task/widget/build_task_checklist.dart';
import 'package:task_management_mobile/screen/task/widget/build_task_head.dart';
import 'package:task_management_mobile/screen/task_detail/task_detail.dart';
import 'package:task_management_mobile/widget/base_widget.dart';
import 'package:task_management_mobile/widget/normal_button.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return BaseWidget(
        appTitle: 'Task',
        body: Column(
          children: [
            BuildTaskHead(),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: TodoController.instance.listTodos.length,
              itemBuilder: (context, index) {
                return BuildTaskChecklistRow(
                    taskName: TodoController.instance.listTodos[index]);
              },
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(),
              child: NormalButton(
                  onPressed: () {
                    Get.to(TaskDetail());
                  },
                  title: 'View Detail'),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(),
              child: NormalButton(
                  onPressed: () {
                    Get.to(CreateTask());
                  },
                  title: 'Create New Task'),
            ),
            SizedBox(
              height: 35,
            )
          ],
        ),
      );
    });
  }
}
