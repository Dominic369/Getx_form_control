import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:test_flutter_3/models/form_model.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter/widgets.dart';

// ignore: camel_case_types
class Form_controller extends GetxController {
  final formKey = GlobalKey<FormState>();

  var selectedImagePath = FormModel().selectedImagePath.obs;
  var selectedImageSize = FormModel().selectedImageSize.obs;
  var cowMomName = FormModel().cowMomName.obs;
  var cowDadName = FormModel().cowDadName.obs;
  var cowCode = FormModel().cowCode.obs;
  var nid = FormModel().nid.obs;
  var rfid = FormModel().rfid.obs;
  var dpo = FormModel().dpo.obs;
  var cowName = FormModel().cowName.obs;
  var date = FormModel().date.obs;
  var age = FormModel().age.obs;
  var cowSex = FormModel().cowSex.obs;
  var cowType = FormModel().cowType.obs;
  var breed = FormModel().breed.obs;
  var proportion = FormModel().proportion.obs;
  var house = FormModel().house.obs;
  var masses = FormModel().masses.obs;

  TextEditingController cowMomNameController = TextEditingController();
  TextEditingController cowDadNameController = TextEditingController();
  TextEditingController cowCodeController = TextEditingController();
  TextEditingController nidController = TextEditingController();
  TextEditingController rfidController = TextEditingController();
  TextEditingController dpoController = TextEditingController();
  TextEditingController cowNameController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  var isVisible = false.obs;
  var isVisibleImage = false.obs;
  var breedText = 'สัดส่วน'.obs;

  TextEditingController textarea1 = TextEditingController();
  TextEditingController textarea2 = TextEditingController();

  void daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    age.value = (to.difference(from).inHours / 24).round();
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
    breed.value = '100.0';
    update();
  }

  void resetText() {
    textarea1.text = "ไม่ทราบสายพันธุ์"; //default text
    textarea2.text = "100"; //default text
    breed.value = '100.0';
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
      selectedImagePath.value = pickedFile.path;
      selectedImageSize.value =
          "${((File(selectedImagePath.value)).lengthSync() / 1024 / 1024).toStringAsFixed(2)} Mb";
    } else {
      selectedImagePath.value = '';
    }
  }

  void clearImage() async {
    changeImageStatus();
    selectedImagePath.value = '';
    selectedImageSize.value = '';
  }

  void changeImageStatus() {
    isVisibleImage.value = !isVisibleImage.value;
    //print('isVisibleImage : $isVisibleImage');
    update();
  }

  void changeCowSex(var cowsex) {
    if (cowsex == "male") {
      cowSex.value = 'male';
    } else if (cowsex == "female") {
      cowSex.value = 'female';
    }

    update();
  }

  void clearForm() {}
}
