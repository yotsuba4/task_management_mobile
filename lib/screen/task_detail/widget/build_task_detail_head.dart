import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management_mobile/constants/asset_path.dart';
import 'package:task_management_mobile/constants/colors.dart';

class BuildTaskDetailHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(17.1 - 8.4)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 20,
              top: 5,
            ),
            child: Text(
              'Interface Design',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenUtil().setSp(20),
                  color: AppColor.secondColor),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Image.asset(icTaskDetailClock),
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                  bottom: 16.5,
                ),
                child: Text(
                  'Are you ready?',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: ScreenUtil().setSp(12),
                      color: AppColor.grey3),
                ),
              ),
              Image.asset(icTaskDetailCalendar),
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                  bottom: 16.5,
                ),
                child: Text(
                  'Are you ready?',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: ScreenUtil().setSp(12),
                      color: AppColor.grey3),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1,
          )
        ],
      ),
    );
  }
}
