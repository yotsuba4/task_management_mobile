import 'package:flutter/material.dart';
import 'package:task_management_mobile/constants/colors.dart';
import 'package:task_management_mobile/data/task_check_lisk.dart';
import 'package:task_management_mobile/screen/task/widget/build_task_checklist.dart';
import 'package:task_management_mobile/screen/task/widget/build_task_head.dart';
import 'package:task_management_mobile/widget/app_bar_widget.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: barCustom(context, 'Task'),
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: Material(
          elevation: 5,
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(10),
          child: Padding(
            padding: const EdgeInsets.only(top: 17.1),
            child: ListView.builder(
                itemCount: tasks.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0)
                    return BuildTaskHead();
                  else
                    return BuildTaskChecklistRow(task: tasks[index - 1]);
                }),
          ),
        ),
      ),
    );
  }
}
