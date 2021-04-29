import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_management_mobile/constants/colors.dart';
import 'package:task_management_mobile/screen/create_task/widget/build_createtask_checklist.dart';
import 'package:task_management_mobile/screen/create_task/widget/datime_picker.dart';
import 'package:task_management_mobile/screen/task_detail/task_detail.dart';
import 'package:task_management_mobile/widget/normal_button.dart';

class BuildCreateTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 6),
            child: Text(
              'Task Name',
              style: TextStyle(
                  color: AppColor.grey3,
                  fontSize: ScreenUtil().setSp(12),
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                labelText: "UI/UX Design",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(
                      color: Color(0xffD7E1EA),
                      style: BorderStyle.solid,
                      width: 1),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 6),
            child: Text(
              'Division',
              style: TextStyle(
                  color: AppColor.grey3,
                  fontSize: ScreenUtil().setSp(12),
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                labelText: "Brand Management",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(
                      color: Color(0xffD7E1EA),
                      style: BorderStyle.solid,
                      width: 1),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 6),
            child: Text(
              'Start / Due Date',
              style: TextStyle(
                  color: AppColor.grey3,
                  fontSize: ScreenUtil().setSp(12),
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            height: 40,
            child: Row(
              children: [
                DateTimePick(color: AppColor.primaryColor),
                SizedBox(
                  width: ScreenUtil().setWidth(12),
                ),
                DateTimePick(
                  color: Color(0xffF0F4F8),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 6),
            child: Text(
              'Branding',
              style: TextStyle(
                  color: AppColor.grey3,
                  fontSize: ScreenUtil().setSp(12),
                  fontWeight: FontWeight.w400),
            ),
          ),
          BuildCreateTaskCheckList(task: 'Color Pallete'),
          BuildCreateTaskCheckList(task: 'Tipography Study'),
          BuildCreateTaskCheckList(task: 'Purchase Mockup'),
          BuildCreateTaskCheckList(task: 'Moodboard Research for Color'),
          Padding(
            padding: const EdgeInsets.only(top: 21, bottom: 14),
            child: Align(
              child: Text(
                "Descriptions",
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(12),
                    color: AppColor.grey3,
                    fontWeight: FontWeight.w400),
              ),
              alignment: Alignment.centerLeft,
            ),
          ),
          Container(
            padding: EdgeInsets.all(18),
            height: 102,
            decoration: BoxDecoration(
              color: Color(0xffF7F9FB),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              "Please, the logo must represent the brand character, positioning, and the client USP and ESP.",
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(14),
                  color: AppColor.grey2,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 17, bottom: 34),
            child: NormalButton(
                onPressed: () {
                  Get.to(TaskDetail());
                },
                title: 'Create New Task'),
          )
        ],
      ),
    );
  }
}
