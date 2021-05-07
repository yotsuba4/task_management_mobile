import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class AvatarController extends GetxController {
  static AvatarController instance = Get.find();
  RxList listImage = [].obs;
  var avatarPicker = ImagePicker();
  /*  RxList listAvatar = [].obs;
  var avatarPicker = ImagePicker();

  RxList<Avatar> saveAvatars = <Avatar>[].obs; */

/*   void insertAvatar(String path) {
    DBProvider.dataBase.addNewAvatar(
      Avatar(path, '2488'),
    );
  }

  void getAvatarsByUrl(String path) async {
    final photos = await DBProvider.dataBase.getAvatarByUrl(path);
    saveAvatars.assignAll(photos);
    update();
  } */

  void getImage() async {
    var image = await avatarPicker.getImage(source: ImageSource.camera);
    File imageFile = File(image.path);
    /*  insertAvatar(image.path);
    getAvatarsByUrl(image.path); */
    listImage.add(imageFile);
  }
}
