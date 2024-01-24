import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter_3/controllers/main_controller.dart';
import 'package:test_flutter_3/models/form_label_model.dart';

class CowParent extends StatelessWidget {
  final GlobalKey<FormState> formkey;

  const CowParent({required this.formkey, super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      dispose: (state) {
        state.controller?.formController.onClose();
      },
      builder: (controller) {
        return Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: controller.formController.cowMomNameController,
              decoration: const InputDecoration(
                labelText: labelMom,
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty || value == '') {
                  return 'กรุณาระบุชื่อแม่โค';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: controller.formController.cowDadNameController,
              decoration: const InputDecoration(
                label: Text(labelDad),
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty || value == '') {
                  return 'กรุณาระบุชื่อพ่อโค';
                }
                return null;
              },
            ),
          ],
        );
      },
    );
  }
}
