import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management_mobile/constants/asset_path.dart';
import 'package:task_management_mobile/constants/colors.dart';

class BuildTaskHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(17.1 - 8.4)),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: ScreenUtil().setWidth(19),
              top: ScreenUtil().setHeight(10),
            ),
            height: ScreenUtil().setHeight(71),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    'Task Checklist',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: ScreenUtil().setSp(20),
                        color: AppColor.secondColor),
                  ),
                ),
                Expanded(child: SizedBox()),
                Container(
                  margin: EdgeInsets.only(right: 28),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 55, top: 2),
                        child: Container(
                            padding: EdgeInsets.all(7),
                            child: Text(
                              '+2',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.primaryColor),
                            ),
                            width: 31,
                            height: 31,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32, top: 2),
                        child: ClipOval(
                          child: Image.asset(
                            imgTaskAvatar3,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: ClipOval(
                          child: Image.asset(
                            imgTaskAvatar2,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: ClipOval(
                          child: Image.asset(
                            imgTaskAvatar1,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
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
