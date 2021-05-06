import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_management_mobile/constants/asset_path.dart';
import 'package:task_management_mobile/constants/colors.dart';
import 'package:task_management_mobile/controller/photo_controller.dart';
import 'package:task_management_mobile/screen/upload_file/upload_dialog.dart';
import 'package:task_management_mobile/widget/base_widget.dart';
import 'package:task_management_mobile/widget/normal_button.dart';

class UploadFile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Photocontroller photocontroller = Get.put(Photocontroller());
    return BaseWidget(
      appTitle: 'Upload File',
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            height: ScreenUtil().setHeight(50),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    "Document",
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(14),
                        color: AppColor.secondColor,
                        fontWeight: FontWeight.w400),
                  ),
                  Expanded(child: SizedBox()),
                  Padding(
                    padding: const EdgeInsets.only(right: 29),
                    child: Text(
                      "August 24, 2020",
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(8),
                          color: AppColor.grey2,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Divider(
            thickness: 1,
            height: 0,
          ),
          Container(
            // height: ScreenUtil().setHeight(390),
            child: Obx(() {
              if (photocontroller.listImage.isNotEmpty)
                return gridview();
              else {
                return defaultgrid();
              }
              /* GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 14,
                mainAxisSpacing: 0,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 30, bottom: 10),
                    child: DottedBorder(
                      color: Color(0xff253F50).withOpacity(0.42),
                      borderType: BorderType.RRect,
                      radius: Radius.circular(7),
                      child: Center(
                        child: Container(
                          height: ScreenUtil().setHeight(30),
                          width: ScreenUtil().setWidth(30),
                          decoration: BoxDecoration(
                              color: AppColor.secondColor,
                              shape: BoxShape.circle,
                              border: Border.all(color: AppColor.secondColor)),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            color: AppColor.primaryColor,
                            size: 20,
                          )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 20),
                    child: Container(
                      child: Image.asset(
                        imgUploadfileKeyboard,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: ScreenUtil().setHeight(124),
                      child: Image.asset(
                        imgUploadfileLight,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      child: Image.asset(
                        imgUploadfileOrange,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ); */
            }),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: ScreenUtil().setHeight(50),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    "Upload File",
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(14),
                        color: AppColor.secondColor,
                        fontWeight: FontWeight.w400),
                  ),
                  Expanded(child: SizedBox()),
                  Padding(
                    padding: const EdgeInsets.only(right: 29),
                    child: Text(
                      "August 24, 2020",
                      style: TextStyle(
                          fontSize: 8,
                          color: AppColor.grey2,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
          ),
          Divider(
            thickness: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
            child: GestureDetector(
              onTap: () {
                photocontroller.getImage();
              },
              child: DottedBorder(
                color: Color(0xff253F50).withOpacity(0.42),
                borderType: BorderType.RRect,
                radius: Radius.circular(7),
                child: Container(
                  height: 190,
                  child: Center(
                      child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 70, bottom: 15),
                        child: Image.asset(icTaskDetailFile),
                      ),
                      Text(
                        "Drop your Image or Browse Here",
                        style: TextStyle(fontSize: 10, color: AppColor.grey2),
                      ),
                    ],
                  )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 17, bottom: 34),
            child: NormalButton(
              onPressed: () {
                showDialog(
                    context: context, builder: (build) => UploadDialog());
              },
              title: 'Upload',
            ),
          ),
        ],
      ),
    );
  }
}

Widget defaultgrid() {
  return GridView.count(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    crossAxisCount: 2,
    crossAxisSpacing: 14,
    mainAxisSpacing: 0,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 30, bottom: 10),
        child: DottedBorder(
          color: Color(0xff253F50).withOpacity(0.42),
          borderType: BorderType.RRect,
          radius: Radius.circular(7),
          child: Center(
            child: Container(
              height: ScreenUtil().setHeight(30),
              width: ScreenUtil().setWidth(30),
              decoration: BoxDecoration(
                  color: AppColor.secondColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColor.secondColor)),
              child: Center(
                  child: Icon(
                Icons.add,
                color: AppColor.primaryColor,
                size: 20,
              )),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20, right: 20),
        child: Container(
          child: Image.asset(
            imgUploadfileKeyboard,
            fit: BoxFit.contain,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(
          height: ScreenUtil().setHeight(124),
          child: Image.asset(
            imgUploadfileLight,
            fit: BoxFit.contain,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Container(
          child: Image.asset(
            imgUploadfileOrange,
            fit: BoxFit.contain,
          ),
        ),
      ),
    ],
  );
}

Widget gridview() {
  Photocontroller photocontroller = Get.find();
  return Padding(
    padding: EdgeInsets.only(top: 19.5, left: 23, right: 24, bottom: 17),
    child: GridView.count(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 1.0,
      mainAxisSpacing: 17,
      crossAxisSpacing: 14,
      children: photocontroller.listImage.map((image) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Image.file(
            image,
            width: ScreenUtil().setWidth(139),
            height: ScreenUtil().setHeight(124),
            fit: BoxFit.fill,
          ),
        );
      }).toList(),
    ),
  );
}
