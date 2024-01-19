import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter_3/controllers/main_controller.dart';

class CowBuilding extends StatelessWidget {
  const CowBuilding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Main_controller>(
      init: Main_controller(),
      dispose: (state) {},
      builder: (controller) {
        return DropdownButtonFormField<String>(
          icon: const Icon(Icons.arrow_drop_down_circle_outlined),
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
          hint: const Text('เลือกโรงเรือน'),
          onChanged: (value) {
            controller.formcontroller.house.value = value.toString();
          },
          items: <String>['โรงเรือน1', 'โรงเรือน2', 'โรงเรือน3', 'โรงเรือน4']
              .map<DropdownMenuItem<String>>(
            (String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            },
          ).toList(),
        );
      },
    );
  }
}
