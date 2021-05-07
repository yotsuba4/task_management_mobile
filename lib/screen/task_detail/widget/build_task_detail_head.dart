import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management_mobile/constants/asset_path.dart';
import 'package:task_management_mobile/constants/colors.dart';

class BuildTaskDetailHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(82.5),
      margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(17.1 - 8.4)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.only(
              right: 29,
              left: 20,
              //   top: 5,
            ),
            child: Text(
              'User Interface',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenUtil().setSp(20),
                  color: AppColor.secondColor),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.only(
              right: 29,
              left: 20,
              //   top: 5,
            ),
            child: Row(
              children: [
                Image.asset(icTaskDetailClock),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "09 : 00  AM",
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(12),
                      color: AppColor.grey2,
                      fontWeight: FontWeight.w400),
                ),
                Expanded(child: SizedBox()),
                Image.asset(
                  icTaskDetailCalendar,
                  height: 14,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "August 24, 2020",
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(12),
                      color: AppColor.grey2,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 10,
            ),
          ),
          Divider(
            thickness: 1,
          )
        ],
      ),
    );
  }
}
