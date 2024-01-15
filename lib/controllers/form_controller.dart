import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:test_flutter_3/models/form_model.dart';

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
}
