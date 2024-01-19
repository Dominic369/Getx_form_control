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

// ignore: camel_case_types
class Main_views extends StatelessWidget {
  const Main_views({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Main_controller>(
      init: Main_controller(),
      dispose: (state) {},
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            backgroundColor: Colors.pinkAccent,
            title: Text(
              controller.formlabelmodel.labelAppBar,
              style: const TextStyle(color: Colors.white),
            ),
            leading: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30,
            ),
          ),
          body: Form(
            key: controller.formcontroller.formKey,
            child: Padding(
              //padding: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const UploadCowImage(),
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
                        CowParent(
                          formkey: controller.formcontroller.formKey,
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
                          formkey: controller.formcontroller.formKey,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const InputMoreCowCode(),
                        const SizedBox(
                          height: 15,
                        ),
                        CowName(
                          formkey: controller.formcontroller.formKey,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const CowBirthDate(),
                        const SizedBox(
                          height: 15,
                        ),
                        const Row(
                          children: [
                            Text(
                              'ประเภทโค',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
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
                        const Row(
                          children: [
                            Text(
                              'สายพันธุ์',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
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
          ),
        );
      },
    );
  }
}
