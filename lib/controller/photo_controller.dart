import 'dart:typed_data';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task_management_mobile/model/photo.dart';
import 'package:task_management_mobile/save_image/db_helper.dart';
import 'package:task_management_mobile/save_image/utility.dart';

class Photocontroller extends GetxController {
  // Future<File> imageFile;
  // Image image;
  DBHelper dbHelper = DBHelper();
  RxList<Photo> images = <Photo>[].obs;
  refreshImages() {
    dbHelper.getPhotos().then((imgs) {
      // images.clear();
      images.assignAll(imgs);
      print(images.length);
    });
  }

  pickImageFromGallery() {
    // ignore: invalid_use_of_visible_for_testing_member
    ImagePicker.platform
        .pickImage(source: ImageSource.gallery)
        .then((imgFile) async {
      Uint8List uint8list = await imgFile.readAsBytes();
      String imgString = Utility.base64String(uint8list);
      Photo photo = Photo(0, imgString);
      dbHelper.save(photo);
      refreshImages();
    });
  }
}
