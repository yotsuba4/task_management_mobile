import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_management_mobile/constants/colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

class UploadDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 379,
        width: 336,
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 14, left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'Upload File',
                      style: TextStyle(
                          color: AppColor.secondColor,
                          fontSize: ScreenUtil().setSp(14),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: ScreenUtil().setWidth(151),
                    ),
                  ),
                  Container(
                    child: Text(
                      'August 24, 2020',
                      style: TextStyle(
                          color: Color(0xffB8BFCE),
                          fontSize: ScreenUtil().setSp(10),
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(15.5),
            ),
            Divider(
              thickness: 0.5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
              child: DottedBorder(
                color: Color(0xff253F50).withOpacity(0.42),
                borderType: BorderType.RRect,
                radius: Radius.circular(7),
                child: Container(
                  padding: EdgeInsets.fromLTRB(17, 32, 17, 13),
                  height: 240,
                  width: 330,
                  child: Center(
                    child: Column(
                      children: [
                        CircularPercentIndicator(
                          radius: 120.0,
                          lineWidth: 13.0,
                          animation: true,
                          percent: 0.7,
                          center: Text(
                            "78%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: AppColor.secondColor,
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints.tightFor(
                            width: ScreenUtil().setWidth(262),
                            height: ScreenUtil().setHeight(48),
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(color: AppColor.secondColor),
                                primary: AppColor.primaryColor,
                              ),
                              child: Text(
                                'Cancle',
                                style: TextStyle(
                                  color: AppColor.secondColor,
                                  fontSize: ScreenUtil().setSp(14),
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
