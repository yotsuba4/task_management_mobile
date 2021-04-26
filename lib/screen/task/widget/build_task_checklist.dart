import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management_mobile/constants/colors.dart';
import 'package:task_management_mobile/model/task.dart';

class BuildTaskChecklistRow extends StatefulWidget {
  final Task task;
  BuildTaskChecklistRow({@required this.task});
  static bool isChecked = false;

  @override
  _BuildTaskChecklistRowState createState() => _BuildTaskChecklistRowState();
}

class _BuildTaskChecklistRowState extends State<BuildTaskChecklistRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: ScreenUtil().setHeight(8.4),
        left: ScreenUtil().setWidth(19),
        right: ScreenUtil().setWidth(19),
      ),
      width: ScreenUtil().setWidth(296),
      height: ScreenUtil().setHeight(42),
      decoration: BoxDecoration(
        border: Border.all(
          color: BuildTaskChecklistRow.isChecked
              ? AppColor.secondColor
              : AppColor.primaryColor,
        ),
        borderRadius: BorderRadius.circular(7),
        color: BuildTaskChecklistRow.isChecked
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
              value: BuildTaskChecklistRow.isChecked,
              onChanged: (value) {
                setState(() {
                  BuildTaskChecklistRow.isChecked = value;
                });
              },
            ),
          ),
          Text(
            widget.task.taskName,
            style: TextStyle(
              fontSize: ScreenUtil().setSp(14),
              fontWeight: FontWeight.w400,
              color: AppColor.grey2,
            ),
          ),
          Expanded(child: SizedBox()),
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
              color: widget.task.tag.bColor,
            ),
            child: Text(
              widget.task.tag.tagName,
              style: TextStyle(
                  color: widget.task.tag.tColor,
                  fontSize: ScreenUtil().setSp(10),
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
