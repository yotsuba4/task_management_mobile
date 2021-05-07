import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:task_management_mobile/constants/colors.dart';
import 'package:task_management_mobile/controller/datetime_picker_controller.dart';

class BottomSheetCalendar extends StatefulWidget {
  @override
  _BottomSheetCalendarState createState() => _BottomSheetCalendarState();
}

class _BottomSheetCalendarState extends State<BottomSheetCalendar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.primaryColor,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: EdgeInsets.fromLTRB(32, 23, 32, 32),
        child: SfDateRangePicker(
          headerStyle: DateRangePickerHeaderStyle(
            textAlign: TextAlign.center,
            textStyle: TextStyle(
                color: AppColor.secondColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                backgroundColor: AppColor.primaryColor),
          ),
          rangeSelectionColor: Color(0xffF2F3FF),
          startRangeSelectionColor: AppColor.secondColor,
          endRangeSelectionColor: AppColor.secondColor,
          onSelectionChanged: DateTimeController.instance.onSelectionChanged,
          selectionMode: DateRangePickerSelectionMode.range,
          initialSelectedRange: PickerDateRange(
              DateTime.now().subtract(const Duration(days: 4)),
              DateTime.now().add(const Duration(days: 3))),
        ),
      ),
    );
  }
}
