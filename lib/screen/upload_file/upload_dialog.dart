import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_management_mobile/constants/colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

class UploadDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 380,
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
                    Text(
                      'Upload File',
                      style: TextStyle(
                          color: AppColor.secondColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 151,
                      ),
                    ),
                    Text(
                      'August 24, 2020',
                      style: TextStyle(
                          color: Color(0xffB8BFCE),
                          fontSize: 10,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15.5,
              ),
              Divider(
                thickness: 0.5,
              ),
              Container(
                height: 317.5,
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 12,
                  bottom: 20,
                ),
                child: DottedBorder(
                  color: Color(0xff253F50).withOpacity(0.2),
                  borderType: BorderType.RRect,
                  radius: Radius.circular(7),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                      17,
                      ScreenUtil().setHeight(32),
                      17,
                      ScreenUtil().setHeight(13),
                    ),
                    height: 294,
                    width: 296,
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
                          Padding(
                            padding: EdgeInsets.only(
                              top: 20,
                              bottom: 21,
                            ),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: 'Upload 15 Files \n',
                                  style: TextStyle(
                                      color: Color(0xff606C83), fontSize: 12),
                                  children: <TextSpan>[
                                    TextSpan(text: '1 Gb from'),
                                    TextSpan(
                                      text: ' 4 Gb Uploaded',
                                      style: TextStyle(
                                        color: AppColor.secondColor,
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                          ConstrainedBox(
                            constraints: BoxConstraints.tightFor(
                              width: 262,
                              height: 48,
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
                                    fontSize: 14,
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
      ),
    );
  }
}
