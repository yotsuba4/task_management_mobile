import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_mobile/screen/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Inter',
        primaryColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}
