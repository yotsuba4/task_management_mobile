import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_management_mobile/constants/asset_path.dart';
import 'package:task_management_mobile/constants/colors.dart';
import 'package:task_management_mobile/screen/task/task.dart';
import 'package:task_management_mobile/widget/app_bar_widget.dart';
import 'package:task_management_mobile/widget/normal_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(360, 779),
      orientation: Orientation.portrait,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: barCustom(context, 'Projects'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'No tasks found?',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(20),
                  fontWeight: FontWeight.w400,
                  color: AppColor.secondColor),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(44.9),
            ),
            Container(
              width: ScreenUtil().setWidth(238.22),
              height: ScreenUtil().setHeight(179.83),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(imgHomePhone),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(45.2),
            ),
            Text(
              'Try to assign more tasks to your \n employees or create a new project from \n scratch',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(12),
                  fontWeight: FontWeight.w400,
                  color: AppColor.grey3),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: ScreenUtil().setHeight(16.0),
            ),
            NormalButton(
                onPressed: () {
                  Get.to(TaskPage());
                },
                title: 'Create New Task'),
          ],
        ),
      ),
    );
  }
}
