import 'package:get/get.dart';
import 'package:test_flutter_3/controllers/form_controller.dart';
import 'package:test_flutter_3/models/form_label_model.dart';

// ignore: camel_case_types
class Main_controller extends GetxController {
  FormLabelModel formlabelmodel = Get.put(FormLabelModel());
  Form_controller formcontroller = Get.put(Form_controller());
}
