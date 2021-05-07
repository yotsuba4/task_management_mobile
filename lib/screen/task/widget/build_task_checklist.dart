import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management_mobile/constants/colors.dart';
import 'package:task_management_mobile/model/todo.dart';

class BuildTaskChecklistRow extends StatefulWidget {
  final ToDo taskName;
  BuildTaskChecklistRow({@required this.taskName});
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
            widget.taskName.name,
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
              color: widget.taskName.descriptions.bColor,
            ),
            child: Text(
              widget.taskName.descriptions.tagName,
              style: TextStyle(
                  color: widget.taskName.descriptions.tColor,
                  fontSize: ScreenUtil().setSp(10),
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
