import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_management_mobile/constants/colors.dart';
import 'package:task_management_mobile/constants/asset_path.dart';
import 'package:task_management_mobile/screen/create_task/widget/build_createtask_checklist.dart';
import 'package:task_management_mobile/screen/task_detail/task_detail.dart';
import 'package:task_management_mobile/widget/normal_button.dart';

class BuildCreateTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          Container(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
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
          Container(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
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
          Row(
            children: [
              Container(
                height: ScreenUtil().setHeight(40),
                width: ScreenUtil().setWidth(142),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Color(0xffD7E1EA)),
                ),
                child: Row(
                  children: [
                    Image.asset(icCreatetaskCalendar),
                    Text(
                      '12/20/2020',
                      style: TextStyle(color: AppColor.grey2),
                    )
                  ],
                ),
              ),
              Container(
                height: ScreenUtil().setHeight(40),
                width: ScreenUtil().setWidth(142),
                decoration: BoxDecoration(
                  color: Color(0xffF0F4F8),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Color(0xffD7E1EA)),
                ),
                child: Row(
                  children: [
                    Image.asset(icCreatetaskCalendar),
                    Text(
                      '12/22/2020',
                      style: TextStyle(color: AppColor.grey2),
                    )
                  ],
                ),
              ),
            ],
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
          Container(
            margin: EdgeInsets.only(bottom: 6),
            child: Text(
              'Descriptions',
              style: TextStyle(
                  color: AppColor.grey3,
                  fontSize: ScreenUtil().setSp(12),
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(102),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xffF7F9FB)),
            child: Text(
              'Please, the logo must represent the brand character, positioning, and the client USP and ESP.',
              style: TextStyle(
                  color: AppColor.grey2,
                  fontSize: ScreenUtil().setSp(14),
                  fontWeight: FontWeight.w400),
            ),
          ),
          NormalButton(
              onPressed: () {
                Get.to(TaskDetail());
              },
              title: 'Create New Task')
        ],
      ),
    );
  }
}
