import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management_mobile/constants/colors.dart';

class BuildCreateTaskCheckList extends StatefulWidget {
  final String task;
  BuildCreateTaskCheckList({@required this.task});
  static bool isChecked = false;

  @override
  _BuildTaskChecklistRowState createState() => _BuildTaskChecklistRowState();
}

class _BuildTaskChecklistRowState extends State<BuildCreateTaskCheckList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: ScreenUtil().setHeight(8.4),
      ),
      height: ScreenUtil().setHeight(42),
      decoration: BoxDecoration(
        border: Border.all(
          color: BuildCreateTaskCheckList.isChecked
              ? AppColor.secondColor
              : AppColor.primaryColor,
        ),
        borderRadius: BorderRadius.circular(7),
        color: BuildCreateTaskCheckList.isChecked
            ? AppColor.primaryColor
            : AppColor.grey5,
      ),
      child: Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Color(0xffDCE0E7)),
            child: Checkbox(
              activeColor: AppColor.secondColor,
              checkColor: AppColor.primaryColor,
              value: BuildCreateTaskCheckList.isChecked,
              onChanged: (value) {
                setState(() {
                  BuildCreateTaskCheckList.isChecked = value;
                });
              },
            ),
          ),
          Text(
            widget.task,
            style: TextStyle(
              fontSize: ScreenUtil().setSp(14),
              fontWeight: FontWeight.w400,
              color: AppColor.grey2,
            ),
          ),
        ],
      ),
    );
  }
}
