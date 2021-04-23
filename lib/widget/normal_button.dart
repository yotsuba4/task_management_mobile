import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management_mobile/constants/colors.dart';
import 'package:task_management_mobile/constants/text_style.dart';

class NormalButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  NormalButton({@required this.onPressed, @required this.title});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: ScreenUtil().setWidth(296),
        height: ScreenUtil().setHeight(48),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: AppTextStyle.btnText,
        ),
        style: ElevatedButton.styleFrom(
          primary: AppColor.secondColor,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
