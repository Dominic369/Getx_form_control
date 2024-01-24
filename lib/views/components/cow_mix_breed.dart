import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter_3/controllers/main_controller.dart';
import 'package:test_flutter_3/models/form_label_model.dart';

class CowMixBreed extends StatelessWidget {
  const CowMixBreed({super.key});

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
              alignment: Alignment.bottomLeft,
              child: const Text(
                'สายพันธุ์',
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
                      controller.formController.changeBreed('5 สายพันธุ์');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          controller.formController.breedText.value ==
                                  '5 สายพันธุ์'
                              ? Colors.blue
                              : Colors.grey[350],
                    ),
                    child: const Row(
                      children: [
                        Text(
                          '5 สายพันธุ์',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.formController.changeBreed('8 สายพันธุ์');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          controller.formController.breedText.value ==
                                  '8 สายพันธุ์'
                              ? Colors.blue
                              : Colors.grey[350],
                    ),
                    child: const Row(
                      children: [
                        Text(
                          '8 สายพันธุ์',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.formController.changeBreed('สัดส่วน');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          controller.formController.breedText.value == 'สัดส่วน'
                              ? Colors.pinkAccent
                              : Colors.pinkAccent,
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.compare_arrows,
                          color: Colors.white,
                          size: 15,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'สัดส่วน',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 8,
                            ),
                            controller.formController.breedText.value ==
                                    'สัดส่วน'
                                ? const Text(
                                    'ไม่ทราบสายพันธุ์',
                                    style: TextStyle(fontSize: 15),
                                  )
                                : const Text(
                                    'โคดำ',
                                    style: TextStyle(fontSize: 15),
                                  )
                          ],
                        ),
                      ),
                      Positioned(
                        top: -10,
                        left: 12,
                        child: Container(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          child: const Text(
                            labelBreed,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Flexible(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: controller.formController.breedText.value ==
                                'สัดส่วน'
                            ? const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("100"),
                                  Padding(
                                    padding: EdgeInsets.all(2),
                                    child: Text("+"),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("0"),
                                      SizedBox(
                                        width: 25,
                                        child: Divider(
                                          color: Colors.black,
                                          thickness: 1,
                                          height: 1,
                                        ),
                                      ),
                                      Text("512")
                                    ],
                                  )
                                ],
                              )
                            : const Row(
                                children: [
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    '100.0',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                      ),
                      Positioned(
                        top: -10,
                        left: 12,
                        child: Container(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          child: const Text(
                            'สัดส่วน',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
