import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter_3/controllers/main_controller.dart';

class FarmCode extends StatelessWidget {
  final GlobalKey<FormState> formkey;

  const FarmCode({required this.formkey, super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Main_controller>(
      init: Main_controller(),
      dispose: (state) {},
      builder: (controller) {
        return TextFormField(
          controller: controller.formcontroller.cowCodeController,
          decoration: const InputDecoration(
              label: Text('เบอร์ลูกโค (ระบบฟาร์ม)'),
              border: OutlineInputBorder()),
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
