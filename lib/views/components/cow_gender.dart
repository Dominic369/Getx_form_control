import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter_3/controllers/main_controller.dart';

class CowGender extends StatelessWidget {
  const CowGender({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Main_controller>(
      init: Main_controller(),
      dispose: (state) {},
      builder: (controller) {
        return Center(
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.changeCowSex('female');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        controller.formcontroller.cowSex.value == 'female'
                            ? Colors.pinkAccent
                            : Colors.grey[350]),
                child: SizedBox(
                  width: 75,
                  child: Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: const Icon(
                          Icons.female,
                          color: Colors.pink,
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      const Text(
                        'เพศเมีย',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.changeCowSex('male');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        controller.formcontroller.cowSex.value == 'male'
                            ? Colors.pinkAccent
                            : Colors.grey[350]),
                child: SizedBox(
                  width: 60,
                  child: Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: const Icon(
                          Icons.female,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      const Text(
                        'เพศผู้',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
