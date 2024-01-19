import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter_3/controllers/main_controller.dart';

class CowParent extends StatelessWidget {
  final GlobalKey<FormState> formkey;

  const CowParent({required this.formkey, super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Main_controller>(
      init: Main_controller(),
      dispose: (state) {},
      builder: (controller) {
        return Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: controller.formcontroller.cowMomNameController,
              decoration: const InputDecoration(
                labelText: 'ชื่อแม่โค',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                return value?.isEmpty ?? true ? 'กรุณาระบุแม่โค' : null;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: controller.formcontroller.cowDadNameController,
              decoration: const InputDecoration(
                  label: Text('ชื่อพ่อโค'), border: OutlineInputBorder()),
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
