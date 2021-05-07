import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task_management_mobile/database/db_provider.dart';
import 'package:task_management_mobile/model/photo.dart';

class Photocontroller extends GetxController {
  static Photocontroller instance = Get.find();
  RxList listImage = [].obs;
  var imagePicker = ImagePicker();

  RxList<Photo> saveImages = <Photo>[].obs;

  void insertImage(String path) {
    DBProvider.dataBase.addNewPhoto(
      Photo('1', path, 'User Interface'),
    );
  }

  void getImagesByTodoID() async {
    final photos = await DBProvider.dataBase.getPhotoByTodoID('User Interface');
    print(photos.length);
    saveImages.assignAll(photos);
    update();
  }

  void getImage() async {
    var image = await imagePicker.getImage(source: ImageSource.camera);
    // File imageFile = File(image.path);
    insertImage(image.path);
    getImagesByTodoID();
    // listImage.add(imageFile);
  }
}
