import 'package:flutter/material.dart';
import 'package:task_management_mobile/constants/colors.dart';
import 'package:task_management_mobile/widget/app_bar_widget.dart';
import 'package:task_management_mobile/constants/asset_path.dart';

class BaseWidget extends StatelessWidget {
  final String appTitle;
  final Widget body;
  BaseWidget({@required this.appTitle, @required this.body});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: barCustom(context, appTitle),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColor.secondColor,
          unselectedItemColor: Colors.grey.shade300,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: 0,
          onTap: (index) {},
          items: [
            BottomNavigationBarItem(
              activeIcon: Image.asset(icTaskCalendarLight),
              icon: Image.asset(icTaskCalendar),
              label: "Calendar",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(icTaskActivity),
              label: "Activity",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(icTaskPlus),
              label: "Plus",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(icTaskDocument),
              label: "Document",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(icTaskSetting),
              label: "Setting",
            )
          ],
          type: BottomNavigationBarType.fixed),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(13),
        child: Container(
            padding: const EdgeInsets.only(top: 17.1),
            decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 30,
                    color: Color(0xffF0F0F0),
                    offset: Offset(5, 15),
                  )
                ]),
            child: body),
      ),
    );
  }
}
