import 'package:intl/intl.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management_mobile/constants/colors.dart';
import 'package:task_management_mobile/constants/asset_path.dart';

class DateTimePick extends StatefulWidget {
  final Color color;
  DateTimePick({@required this.color});
  @override
  _DateTimePickState createState() => _DateTimePickState();
}

class _DateTimePickState extends State<DateTimePick> {
  DateTime date = DateTime.now();
  String value = DateFormat('MM/dd/yyyy').format(DateTime.now());
  Future _selectDate() async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2020),
      lastDate: new DateTime(2022),
    );
    value = DateFormat('MM/dd/yyyy').format(picked);
    if (picked != null) setState(() => value = value.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15),
      height: 40,
      width: ScreenUtil().setWidth(142),
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Color(0xffD7E1EA)),
      ),
      child: GestureDetector(
        onTap: () {
          _selectDate();
        },
        child: Center(
          child: Row(
            children: [
              Image.asset(icCreatetaskCalendar),
              SizedBox(
                width: 15,
              ),
              Text(
                value,
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(14),
                    color: AppColor.grey2,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
