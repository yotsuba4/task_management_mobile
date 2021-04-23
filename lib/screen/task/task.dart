import 'package:flutter/material.dart';
import 'package:task_management_mobile/constants/colors.dart';
import 'package:task_management_mobile/widget/app_bar_widget.dart';

class TaskPage extends StatelessWidget {
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
          child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Text('$index');
              }),
        ),
      ),
    );
  }
}
