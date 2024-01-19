import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_flutter_3/controllers/form_controller.dart';
import 'package:test_flutter_3/models/form_label_model.dart';

// ignore: camel_case_types
class Main_controller extends GetxController {
  var isVisible = false.obs;
  var isVisibleImage = false.obs;
  var breedText = 'สัดส่วน'.obs;
  TextEditingController textarea1 = TextEditingController();
  TextEditingController textarea2 = TextEditingController();

  FormLabelModel formlabelmodel = Get.put(FormLabelModel());
  Form_controller formcontroller = Get.put(Form_controller());

  void daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    formcontroller.age.value = (to.difference(from).inHours / 24).round();
    update();
  }

  void changeBreed(var breed) {
    if (breed == '5 สายพันธุ์') {
      breedText.value = '5 สายพันธุ์';
      setText();
    } else if (breed == '8 สายพันธุ์') {
      breedText.value = '8 สายพันธุ์';
      setText();
    } else if (breed == 'สัดส่วน') {
      breedText.value = 'สัดส่วน';
      resetText();
    }

    update();
  }

  void setText() {
    textarea1.text = "โคดำ"; //set Text
    textarea2.text = "100"; //set Text
    formcontroller.breed.value = '100.0';
    update();
  }

  void resetText() {
    textarea1.text = "ไม่ทราบสายพันธุ์"; //default text
    textarea2.text = "100"; //default text
    formcontroller.breed.value = '100.0';
    update();
  }

  void changeStatus() {
    isVisible.value = !isVisible.value;
    //print('isVisible : $isVisible');
    update();
  }

  void getImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      changeImageStatus();
      formcontroller.selectedImagePath.value = pickedFile.path;
      formcontroller.selectedImageSize.value =
          "${((File(formcontroller.selectedImagePath.value)).lengthSync() / 1024 / 1024).toStringAsFixed(2)} Mb";
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
    //print('isVisibleImage : $isVisibleImage');
    update();
  }

  void changeCowSex(var cowsex) {
    if (cowsex == "male") {
      formcontroller.cowSex.value = 'male';
    } else if (cowsex == "female") {
      formcontroller.cowSex.value = 'female';
    }

    update();
  }

  void clearForm() {}
}
