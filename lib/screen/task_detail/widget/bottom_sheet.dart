import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management_mobile/constants/asset_path.dart';
import 'package:task_management_mobile/constants/colors.dart';
import 'package:task_management_mobile/data/members.dart';
import 'package:task_management_mobile/widget/normal_checkbox.dart';

class BottomSheetWidget extends StatefulWidget {
  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(32, 20, 32, 0),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Team Members",
                        style: TextStyle(
                            color: AppColor.secondColor,
                            fontSize: ScreenUtil().setSp(20),
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "12 Active Member",
                        style: TextStyle(
                            color: AppColor.grey2,
                            fontSize: ScreenUtil().setSp(12),
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 31,
                      width: 31,
                      decoration: BoxDecoration(
                        color: AppColor.secondColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: AppColor.primaryColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(16.5)),
            Divider(
              thickness: 0.5,
            ),
            SizedBox(height: ScreenUtil().setHeight(16.5)),
            Container(
              padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                      fontSize: ScreenUtil().setSp(12),
                      color: AppColor.grey2,
                      fontWeight: FontWeight.w400),
                  suffixIcon: Image.asset(
                    icHomeSearch,
                    color: Color(0xffD7E1EA),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      color: Color(0xffD7E1EA),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(14)),
            Container(
              padding: EdgeInsets.only(top: 8),
              height: ScreenUtil().setHeight(268),
              child: ListView.builder(
                itemCount: listMember.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
                    height: ScreenUtil().setHeight(50),
                    child: Row(
                      children: [
                        Image.asset(listMember[index].image),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              listMember[index].name,
                              style: TextStyle(
                                fontSize: ScreenUtil().setSp(14),
                                color: Color(0xff35425B),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              listMember[index].detail,
                              style: TextStyle(
                                  fontSize: ScreenUtil().setSp(10),
                                  color: AppColor.grey2,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Expanded(child: SizedBox()),
                        NormalCheckbox(),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
