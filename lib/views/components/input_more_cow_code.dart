import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:test_flutter_3/controllers/main_controller.dart';

class InputMoreCowCode extends StatelessWidget {
  const InputMoreCowCode({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Main_controller>(
      init: Main_controller(),
      dispose: (state) {},
      builder: (controller) {
        return Column(
          children: [
            ElevatedButton(
              onPressed: controller.changeStatus,
              style: ElevatedButton.styleFrom(
                  //primary: Colors.green,
                  backgroundColor: Colors.green,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              // padding: const EdgeInsets.all(0.0),
              child: Container(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 1.0),
                        child: const Text(
                          "เบอร์ลูกโคเพิ่มเติม",
                          style: TextStyle(fontSize: 15.0, color: Colors.white),
                        )),
                    Align(
                      alignment: Alignment.centerRight,
                      child: controller.isVisible.value == false
                          ? const Icon(
                              Icons.arrow_drop_up,
                              color: Colors.white,
                            )
                          : const Icon(Icons.arrow_drop_down,
                              color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Visibility(
              visible: controller.isVisible.value,
              child: Column(
                children: [
                  TextFormField(
                    controller: controller.formcontroller.nidController,
                    decoration: const InputDecoration(
                        label: Text('nid'), border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: controller.formcontroller.rfidController,
                    decoration: const InputDecoration(
                        label: Text('rfid'), border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: controller.formcontroller.dpoController,
                    decoration: const InputDecoration(
                        label: Text('dpo'), border: OutlineInputBorder()),
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
