import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_management_mobile/constants/asset_path.dart';
import 'package:task_management_mobile/constants/text_style.dart';
import 'package:task_management_mobile/controller/avatar_controller.dart';

AppBar barCustom(BuildContext context, String title) {
  AvatarController avatarController = Get.put(AvatarController());
  return AppBar(
    elevation: 1,
    centerTitle: true,
    title: Text(
      title,
      style: AppTextStyle.appBarTitle,
    ),
    leading: Image.asset(icHomeSearch),
    actions: [
      Image.asset(icHomeNotification),
      GestureDetector(
        onTap: () {
          avatarController.getImage();
        },
        child: Obx(
          () {
            return Container(
              margin: EdgeInsets.only(right: ScreenUtil().setHeight(18)),
              width: ScreenUtil().setWidth(22),
              height: ScreenUtil().setHeight(22),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: avatarController.listImage.isEmpty
                        ? AssetImage(imgHomeAvatarBar)
                        : FileImage(avatarController
                            .listImage[avatarController.listImage.length - 1])),
              ),
            );
          },
        ),
      ),
    ],
    flexibleSpace: SizedBox(
      height: ScreenUtil().setHeight(24.5),
    ),
  );
}
