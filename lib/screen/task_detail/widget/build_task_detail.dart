import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management_mobile/constants/colors.dart';
import 'package:task_management_mobile/data/task_check_lisk.dart';
import 'package:task_management_mobile/screen/create_task/widget/build_createtask_checklist.dart';

class BuildTaskDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Description',
            style: TextStyle(
                color: AppColor.secondColor,
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
          Text(
              'Communicate clear deadlines and expectations, and keep everyone on your team aligned and motivated.'),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: ScreenUtil().setWidth(9)),
                padding: EdgeInsets.fromLTRB(
                  ScreenUtil().setWidth(11),
                  ScreenUtil().setHeight(3),
                  ScreenUtil().setWidth(12),
                  ScreenUtil().setHeight(5),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: strategist.bColor,
                ),
                child: Text(
                  strategist.tagName,
                  style: TextStyle(
                      color: strategist.tColor,
                      fontSize: ScreenUtil().setSp(10),
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: ScreenUtil().setWidth(9)),
                padding: EdgeInsets.fromLTRB(
                  ScreenUtil().setWidth(11),
                  ScreenUtil().setHeight(3),
                  ScreenUtil().setWidth(12),
                  ScreenUtil().setHeight(5),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: uiux.bColor,
                ),
                child: Text(
                  strategist.tagName,
                  style: TextStyle(
                      color: uiux.tColor,
                      fontSize: ScreenUtil().setSp(10),
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          BuildCreateTaskCheckList(task: 'Tipography Study'),
          BuildCreateTaskCheckList(task: 'Sketch basic Logo'),
          BuildCreateTaskCheckList(task: 'Purchase Mockup'),
          Row(
            children: [
              Text(
                'Upload File',
                style: TextStyle(
                    color: AppColor.secondColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              Expanded(child: SizedBox()),
              Text('August 24, 2020'),
            ],
          ),
          DottedBorder(
            color: Colors.black,
            strokeWidth: 1,
            child: FlutterLogo(size: 148),
          )
        ],
      ),
    );
  }
}
