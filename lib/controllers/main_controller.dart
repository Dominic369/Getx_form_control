import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_flutter_3/controllers/form_controller.dart';

class Main_controller extends GetxController {
  var isVisible = false.obs;
  var isVisibleImage = false.obs;
  TextEditingController textarea1 = TextEditingController();
  TextEditingController textarea2 = TextEditingController();

  Form_controller formcontroller = Get.put(Form_controller());

  void daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    formcontroller.age.value = (to.difference(from).inHours / 24).round();
    update();
  }

  void setText() {
    textarea1.text = "ไม่ทราบสายพันธุ์"; //set Text
    textarea2.text = "100 + (0/512)"; //set Text
    formcontroller.breed.value = 100;
    update();
  }

  void resetText() {
    textarea1.text = ""; //default text
    textarea2.text = ""; //default text
    formcontroller.breed.value = 0;
    update();
  }

  void changeStatus() {
    isVisible.value = !isVisible.value;
    print('decrementCounter2 : $isVisible');
    update();
  }

  void onInit() {
    super.onInit();
  }

  void getImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      changeImageStatus();
      formcontroller.selectedImagePath.value = pickedFile.path;
      formcontroller.selectedImageSize.value =
          ((File(formcontroller.selectedImagePath.value)).lengthSync() /
                      1024 /
                      1024)
                  .toStringAsFixed(2) +
              " Mb";
    } else {
      formcontroller.selectedImagePath.value = '';
    }
  }

  void clearImage() async {
    changeImageStatus();
    formcontroller.selectedImagePath.value = '';
    formcontroller.selectedImageSize.value = '';
  }

  void changeImageStatus() {
    isVisibleImage.value = !isVisibleImage.value;
    print('isVisibleImage : $isVisibleImage');
    update();
  }

  void clearForm() {}
}
