import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management_mobile/constants/colors.dart';

class AppTextStyle {
  static TextStyle appBarTitle = TextStyle(
      fontSize: ScreenUtil().setSp(16),
      fontWeight: FontWeight.w600,
      color: AppColor.secondColor);
  static TextStyle btnText = TextStyle(
      fontSize: ScreenUtil().setSp(14),
      fontWeight: FontWeight.w700,
      color: AppColor.primaryColor);
}
