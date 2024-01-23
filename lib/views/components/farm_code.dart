import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter_3/controllers/main_controller.dart';
import 'package:test_flutter_3/models/form_label_model.dart';

class FarmCode extends StatelessWidget {
  final GlobalKey<FormState> formkey;

  const FarmCode({required this.formkey, super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      dispose: (state) {
        state.controller?.formController.onClose();
      },
      builder: (controller) {
        return TextFormField(
          controller: controller.formController.cowCodeController,
          decoration: const InputDecoration(
            label: Text(labelFarmCode),
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty || value == '') {
              print('กรุณาระบุเบอร์ลูกโค');
              return 'กรุณาระบุเบอร์ลูกโค';
            }
            return null;
          },
        );
      },
    );
  }
}
