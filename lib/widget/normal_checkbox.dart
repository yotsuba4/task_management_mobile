import 'package:flutter/material.dart';
import 'package:task_management_mobile/constants/colors.dart';

class NormalCheckbox extends StatefulWidget {
  @override
  _NormalCheckboxState createState() => _NormalCheckboxState();
}

class _NormalCheckboxState extends State<NormalCheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(unselectedWidgetColor: Color(0xffDCE0E7)),
      child: Checkbox(
        activeColor: AppColor.secondColor,
        checkColor: AppColor.primaryColor,
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = value;
          });
        },
      ),
    );
  }
}
