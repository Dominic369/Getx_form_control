import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter_3/controllers/main_controller.dart';
import 'package:test_flutter_3/views/components/cow_birth_date.dart';
import 'package:test_flutter_3/views/components/cow_building.dart';
import 'package:test_flutter_3/views/components/cow_herd.dart';
import 'package:test_flutter_3/views/components/cow_mix_breed.dart';
import 'package:test_flutter_3/views/components/cow_name.dart';
import 'package:test_flutter_3/views/components/cow_parent.dart';
import 'package:test_flutter_3/views/components/cow_gender.dart';
import 'package:test_flutter_3/views/components/cow_type.dart';
import 'package:test_flutter_3/views/components/farm_code.dart';
import 'package:test_flutter_3/views/components/input_more_cow_code.dart';
import 'package:test_flutter_3/views/components/main_submit_bottom.dart';
import 'package:test_flutter_3/views/components/upload_cow_image.dart';

class FormBody extends StatelessWidget {
  const FormBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      dispose: (state) {},
      builder: (controller) {
        return Form(
          key: controller.formController.formKey,
          child: Padding(
            //padding: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ListView(
              children: [
                const SizedBox(height: 15),
                const UploadCowImage(),
                const SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.pinkAccent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CowParent(
                        formkey: controller.formController.formKey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.pinkAccent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      FarmCode(
                        formkey: controller.formController.formKey,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const InputMoreCowCode(),
                      const SizedBox(
                        height: 15,
                      ),
                      CowName(
                        formkey: controller.formController.formKey,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const CowBirthDate(),
                      const SizedBox(
                        height: 15,
                      ),
                      const CowGender(),
                      const SizedBox(
                        height: 15,
                      ),
                      const CowType(),
                      const SizedBox(
                        height: 15,
                      ),
                      const CowMixBreed(),
                      const SizedBox(
                        height: 25,
                      ),
                      const CowBuilding(),
                      const SizedBox(
                        height: 15,
                      ),
                      const CowHerd(),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const MainSubmitBottom(),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
