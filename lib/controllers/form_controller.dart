import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:test_flutter_3/models/form_model.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

// ignore: camel_case_types
class FormController extends GetxController {
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

  //upload_cow_image
  var isVisibleImage = false.obs;

  //cow_mix_breed
  var breedText = 'สัดส่วน'.obs;

  //in_put_more_cow_code
  var isVisible = false.obs;

  TextEditingController cowMomNameController = TextEditingController();
  TextEditingController cowDadNameController = TextEditingController();
  TextEditingController cowCodeController = TextEditingController();
  TextEditingController nidController = TextEditingController();
  TextEditingController rfidController = TextEditingController();
  TextEditingController dpoController = TextEditingController();
  TextEditingController cowNameController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  //upload_cow_image
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

    update();
    Get.forceAppUpdate();
  }

  void clearImage() async {
    changeImageStatus();
    selectedImagePath.value = '';
    selectedImageSize.value = '';

    update();
    Get.forceAppUpdate();
  }

  void changeImageStatus() {
    isVisibleImage.value = !isVisibleImage.value;
    //print('isVisibleImage : $isVisibleImage');
    //update();
    //Get.forceAppUpdate();
  }

  //in_put_more_cow_code
  void changeStatus() {
    isVisible.value = !isVisible.value;
    print('isVisible : $isVisible');
    update();
    Get.forceAppUpdate();
  }

  //cow_birth_date
  void daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    age.value = (to.difference(from).inHours / 24).round();
    update();
    Get.forceAppUpdate();
  }

  //cow_mix_breed
  void changeBreed(var breed) {
    if (breed == '5 สายพันธุ์') {
      breedText.value = breed;
      //breed.value = '100.0';
    } else if (breed == '8 สายพันธุ์') {
      breedText.value = breed;
      //breed.value = '100.0';
    } else if (breed == 'สัดส่วน') {
      breedText.value = breed;
      //breed.value = '100.0';
    }

    update();
    Get.forceAppUpdate();
  }

  //cow_gender
  void changeCowSex(var cowsex) {
    if (cowsex == "male") {
      cowSex.value = 'male';
    } else if (cowsex == "female") {
      cowSex.value = 'female';
    }

    update();
    Get.forceAppUpdate();
  }
}
