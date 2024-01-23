import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter_3/controllers/main_controller.dart';

class CowMixBreed extends StatelessWidget {
  const CowMixBreed({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Main_controller>(
      init: Main_controller(),
      dispose: (state) {},
      builder: (controller) {
        return Column(
          children: [
            Center(
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      controller.formcontroller.changeBreed('5 สายพันธุ์');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            controller.formcontroller.breedText.value ==
                                    '5 สายพันธุ์'
                                ? Colors.blue
                                : Colors.grey[350]),
                    child: const Row(
                      children: [
                        Text(
                          '5 สายพันธุ์',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.formcontroller.changeBreed('8 สายพันธุ์');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            controller.formcontroller.breedText.value ==
                                    '8 สายพันธุ์'
                                ? Colors.blue
                                : Colors.grey[350]),
                    child: const Row(
                      children: [
                        Text(
                          '8 สายพันธุ์',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.formcontroller.changeBreed('สัดส่วน');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            controller.formcontroller.breedText.value ==
                                    'สัดส่วน'
                                ? Colors.pinkAccent
                                : Colors.pinkAccent),
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              child: controller.formcontroller.breedText.value == 'สัดส่วน'
                  ? Row(
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
                                  border:
                                      Border.all(width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Row(
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'ไม่ทราบสายพันธุ์',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -10,
                                left: 12,
                                child: Container(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  child: const Text(
                                    'สายพันธู์',
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
                                  border:
                                      Border.all(width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Row(
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
                                ),
                              ),
                              Positioned(
                                top: -10,
                                left: 12,
                                child: Container(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 3),
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
                  : Row(
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
                                  border:
                                      Border.all(width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Row(
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'โคดำ',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -10,
                                left: 12,
                                child: Container(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  child: const Text(
                                    'สายพันธู์',
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
                                  border:
                                      Border.all(width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Row(
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
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 3),
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
                    ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.info_outline_rounded,
                      color: Colors.pinkAccent,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'ข้อมูลสายพันธ์ุ',
                      style: TextStyle(fontSize: 15, color: Colors.pinkAccent),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      controller.formcontroller.breed(),
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const Text('/100%'),
                  ],
                )
              ],
            ),
          ],
        );
      },
    );
  }
}
