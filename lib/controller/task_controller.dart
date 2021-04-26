import 'package:get/get.dart';

class TaskController extends GetxController {
  RxBool isChecked = false.obs;
  check(bool value) => isChecked(value);
  unCheck() => isChecked(false);
}
