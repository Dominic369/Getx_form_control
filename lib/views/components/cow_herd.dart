import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter_3/controllers/main_controller.dart';
import 'package:test_flutter_3/models/form_label_model.dart';

class CowHerd extends StatelessWidget {
  const CowHerd({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      dispose: (state) {
        state.controller?.formController.onClose();
      },
      builder: (controller) {
        return DropdownButtonFormField<String>(
          icon: const Icon(Icons.arrow_drop_down_circle_outlined),
          decoration: const InputDecoration(border: OutlineInputBorder()),
          hint: const Text(labelHerd),
          onChanged: (value) {
            controller.formController.proportion.value = value.toString();
          },
          items: <String>[
            'ฝูง1',
            'ฝูง2',
            'ฝูง3',
            'ฝูง4',
          ].map<DropdownMenuItem<String>>(
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
