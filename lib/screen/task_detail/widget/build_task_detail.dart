import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_management_mobile/constants/asset_path.dart';
import 'package:task_management_mobile/constants/colors.dart';
import 'package:task_management_mobile/data/task_check_lisk.dart';
import 'package:task_management_mobile/screen/create_task/create_task.dart';
import 'package:task_management_mobile/screen/create_task/widget/build_createtask_checklist.dart';
import 'package:task_management_mobile/screen/task_detail/widget/bottom_sheet.dart';
import 'package:task_management_mobile/screen/upload_file/upload_file.dart';
import 'package:task_management_mobile/widget/normal_button.dart';

class BuildTaskDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20, right: 20.8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Description',
                style: TextStyle(
                    color: AppColor.secondColor,
                    fontSize: ScreenUtil().setSp(14),
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  'Communicate clear deadlines and expectations, and keep everyone on your team aligned and motivated.'),
              SizedBox(height: ScreenUtil().setHeight(16)),
              Row(
                children: [
                  Container(
                    height: ScreenUtil().setHeight(22),
                    width: ScreenUtil().setWidth(66),
                    margin: EdgeInsets.only(right: ScreenUtil().setWidth(9)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: strategist.bColor,
                    ),
                    child: Center(
                      child: Text(
                        strategist.tagName,
                        style: TextStyle(
                            color: strategist.tColor,
                            fontSize: ScreenUtil().setSp(10),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(22),
                    width: ScreenUtil().setWidth(66),
                    margin: EdgeInsets.only(right: ScreenUtil().setWidth(9)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: uiux.bColor,
                    ),
                    child: Center(
                      child: Text(
                        strategist.tagName,
                        style: TextStyle(
                            color: uiux.tColor,
                            fontSize: ScreenUtil().setSp(10),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(22.6)),
              BuildCreateTaskCheckList(task: 'Tipography Study'),
              BuildCreateTaskCheckList(task: 'Sketch basic Logo'),
              BuildCreateTaskCheckList(task: 'Purchase Mockup'),
              SizedBox(
                height: ScreenUtil().setHeight(33 - 8.4),
              ),
              Row(
                children: [
                  Text(
                    'Upload File',
                    style: TextStyle(
                        color: AppColor.secondColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Expanded(child: SizedBox()),
                  Text(
                    'August 24, 2020',
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(8),
                      fontWeight: FontWeight.w400,
                      color: Color(0xffB8BFCE),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(13),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 0.5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
          child: GestureDetector(
            onTap: () {
              Get.to(UploadFile());
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
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 30, left: 20),
          height: 50,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text(
                  "Assigned To : ",
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(14),
                      color: AppColor.secondColor,
                      fontWeight: FontWeight.w400),
                ),
                Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.only(right: 29),
                  child: Text(
                    'August 24, 2020',
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(8),
                      fontWeight: FontWeight.w400,
                      color: Color(0xffB8BFCE),
                    ),
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
          padding: const EdgeInsets.fromLTRB(27, 20, 21, 40),
          child: Container(
            child: Row(
              children: [
                Image.asset(imgTaskAvatar3),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Text(
                      "Tonny Stark",
                      style: TextStyle(
                          color: Color(0xff35425B),
                          fontSize: ScreenUtil().setSp(14),
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Project Manager",
                      style: TextStyle(
                          color: Color(0xff72809D),
                          fontSize: ScreenUtil().setSp(10),
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                Expanded(child: SizedBox()),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                        ),
                        context: context,
                        builder: (BuildContext context) => BottomSheetWidget());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff72809D)),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Color(0xff72809D),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(28)),
          child: NormalButton(
              onPressed: () {
                Get.offAll(CreateTask());
              },
              title: 'Add New Task'),
        )
      ],
    );
  }
}
