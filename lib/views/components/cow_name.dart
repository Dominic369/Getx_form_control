import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter_3/controllers/main_controller.dart';

class CowName extends StatelessWidget {
  final GlobalKey<FormState> formkey;
  const CowName({required this.formkey, super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Main_controller>(
      init: Main_controller(),
      dispose: (state) {},
      builder: (controller) {
        return TextFormField(
          controller: controller.formcontroller.cowNameController,
          decoration: const InputDecoration(
              label: Text('ชื่อลูกโค'), border: OutlineInputBorder()),
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
