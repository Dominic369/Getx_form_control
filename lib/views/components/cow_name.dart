import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter_3/controllers/main_controller.dart';
import 'package:test_flutter_3/models/form_label_model.dart';

class CowName extends StatelessWidget {
  final GlobalKey<FormState> formkey;
  const CowName({required this.formkey, super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      dispose: (state) {
        state.controller?.formController.onClose();
      },
      builder: (controller) {
        return TextFormField(
          controller: controller.formController.cowNameController,
          decoration: const InputDecoration(
            label: Text(labelCowName),
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty || value == '') {
              return 'กรุณาระบุชื่อลูกโค';
            }
            return null;
          },
        );
      },
    );
  }
}
