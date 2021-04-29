import 'package:flutter/material.dart';
import 'package:task_management_mobile/screen/create_task/widget/build_create_task.dart';
import 'package:task_management_mobile/screen/create_task/widget/build_create_task_head.dart';
import 'package:task_management_mobile/widget/base_widget.dart';

class CreateTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      appTitle: 'Create Task',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildCreateTaskHead(),
          BuildCreateTask(),
        ],
      ),
    );
  }
}
