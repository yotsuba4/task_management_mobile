import 'package:flutter/material.dart';
import 'package:task_management_mobile/screen/task_detail/widget/build_task_detail.dart';
import 'package:task_management_mobile/screen/task_detail/widget/build_task_detail_head.dart';
import 'package:task_management_mobile/widget/base_widget.dart';

class TaskDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      appTitle: 'Task Detail',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildTaskDetailHead(),
          BuildTaskDetail(),
        ],
      ),
    );
  }
}
