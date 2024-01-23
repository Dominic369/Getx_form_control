import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter_3/controllers/main_controller.dart';
import 'package:test_flutter_3/models/form_label_model.dart';

class CowGender extends StatelessWidget {
  const CowGender({super.key});

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
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                labelCowType,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      controller.formController.changeCowSex('female');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          controller.formController.cowSex.value == 'female'
                              ? Colors.pinkAccent
                              : Colors.grey[350],
                    ),
                    child: SizedBox(
                      width: 75,
                      child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Icons.female,
                              color: Colors.pink,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Text(
                            cowGenderFemale,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.formController.changeCowSex('male');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          controller.formController.cowSex.value == 'male'
                              ? Colors.pinkAccent
                              : Colors.grey[350],
                    ),
                    child: SizedBox(
                      width: 60,
                      child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Icons.female,
                              color: Colors.blue,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Text(
                            cowGenderMale,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
