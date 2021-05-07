import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_management_mobile/constants/asset_path.dart';
import 'package:task_management_mobile/constants/colors.dart';
import 'package:task_management_mobile/controller/datetime_picker_controller.dart';
import 'package:task_management_mobile/screen/create_task/widget/bottom_sheet_calendar.dart';

class DateTimePickerRange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTimeController dateTimeController = Get.put(DateTimeController());
    return Obx(
      () {
        return Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15),
              height: 40,
              width: ScreenUtil().setWidth(142),
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Color(0xffD7E1EA)),
              ),
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                      ),
                      context: context,
                      builder: (BuildContext context) => BottomSheetCalendar());
                },
                child: Center(
                  child: Row(
                    children: [
                      Image.asset(icCreatetaskCalendar),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        dateTimeController.startDay.value,
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(14),
                            color: AppColor.grey2,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: ScreenUtil().setWidth(12),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              height: 40,
              width: ScreenUtil().setWidth(142),
              decoration: BoxDecoration(
                color: Color(0xffF0F4F8),
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Color(0xffD7E1EA)),
              ),
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                      ),
                      context: context,
                      builder: (BuildContext context) => BottomSheetCalendar());
                },
                child: Center(
                  child: Row(
                    children: [
                      Image.asset(icCreatetaskCalendar),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        dateTimeController.endDay.value,
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(14),
                            color: AppColor.grey2,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
