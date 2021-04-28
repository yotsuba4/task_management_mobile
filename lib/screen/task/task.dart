import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_mobile/data/task_check_lisk.dart';
import 'package:task_management_mobile/screen/create_task/create_task.dart';
import 'package:task_management_mobile/screen/task/widget/build_task_checklist.dart';
import 'package:task_management_mobile/screen/task/widget/build_task_head.dart';
import 'package:task_management_mobile/widget/base_widget.dart';
import 'package:task_management_mobile/widget/normal_button.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      appTitle: 'Task',
      body: Column(
        children: [
          BuildTaskHead(),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return BuildTaskChecklistRow(task: tasks[index]);
            },
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
            height: 50,
          )
        ],
      ),
    );
  }
}
