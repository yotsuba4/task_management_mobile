import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DateTimeController extends GetxController {
  static DateTimeController instance = Get.find();
  RxString selectedDate = ''.obs;
  RxString dateCount = ''.obs;
  RxString range = ''.obs;
  RxString rangeCount = ''.obs;
  RxString startDay = ''.obs;
  RxString endDay = ''.obs;
  void onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {
      startDay.value =
          DateFormat('dd/MM/yyyy').format(args.value.startDate).toString();

      endDay.value = DateFormat('dd/MM/yyyy')
          .format(args.value.endDate ?? args.value.startDate)
          .toString();
      range.value =
          DateFormat('dd/MM/yyyy').format(args.value.startDate).toString() +
              ' - ' +
              DateFormat('dd/MM/yyyy')
                  .format(args.value.endDate ?? args.value.startDate)
                  .toString();
      print(range);
    } else if (args.value is DateTime) {
      selectedDate.value = args.value.toString();
    } else if (args.value is List<DateTime>) {
      dateCount.value = args.value.length.toString();
    } else {
      rangeCount.value = args.value.length.toString();
    }
    update();
  }
}
