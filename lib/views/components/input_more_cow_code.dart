import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:test_flutter_3/controllers/main_controller.dart';
import 'package:test_flutter_3/models/form_label_model.dart';

class InputMoreCowCode extends StatelessWidget {
  const InputMoreCowCode({super.key});

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
            ElevatedButton(
              onPressed: () {
                controller.formController.changeStatus(controller);
              },
              style: ElevatedButton.styleFrom(
                //primary: Colors.green,
                backgroundColor: Colors.green,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
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
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: controller.formController.isVisible.value == false
                          ? const Icon(
                              Icons.arrow_drop_up,
                              color: Colors.white,
                            )
                          : const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Visibility(
              visible: controller.formController.isVisible.value,
              child: Column(
                children: [
                  TextFormField(
                    controller: controller.formController.nidController,
                    decoration: const InputDecoration(
                      label: Text(labelNid),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: controller.formController.rfidController,
                    decoration: const InputDecoration(
                      label: Text(labelRfid),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: controller.formController.dpoController,
                    decoration: const InputDecoration(
                      label: Text(labelDpo),
                      border: OutlineInputBorder(),
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
