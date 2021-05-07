import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Photocontroller extends GetxController {
  RxList listImage = [].obs;
  var imagePicker = ImagePicker();

  void getImage() async {
    var image = await imagePicker.getImage(source: ImageSource.camera);
    File imageFile = File(image.path);
    listImage.add(imageFile);
  }
}
