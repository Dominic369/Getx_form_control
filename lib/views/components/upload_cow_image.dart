import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter_3/controllers/main_controller.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UploadCowImage extends StatelessWidget {
  const UploadCowImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      dispose: (state) {
        state.controller?.formController.onClose();
      },
      builder: (controller) {
        return Container(
          padding: const EdgeInsets.all(5),
          child: Stack(
            children: [
              DottedBorder(
                color: Colors.pinkAccent,
                strokeWidth: 3,
                dashPattern: const [10, 6],
                radius: const Radius.circular(5),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  child: Container(
                    color: Colors.grey[600],
                    padding: const EdgeInsets.all(8.0),
                    //height: 250,
                    width: double.infinity,
                    child: Column(
                      children: [
                        controller.formController.selectedImagePath.value == ''
                            ? Stack(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                        'assets/images/Cowicon.png',
                                        scale: 1.5,
                                        color: Colors.grey[800]),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Visibility(
                                          visible: controller
                                                      .formController
                                                      .selectedImagePath
                                                      .value ==
                                                  ''
                                              ? true
                                              : false,
                                          child: Column(
                                            children: [
                                              const SizedBox(height: 30),
                                              InkWell(
                                                child: Container(
                                                  width: 120,
                                                  height: 80,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.white,
                                                        //width: 5.0,
                                                        style:
                                                            BorderStyle.solid),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: const Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .cloud_upload_outlined,
                                                        size: 30,
                                                        color: Colors.white,
                                                      ),
                                                      SizedBox(height: 5),
                                                      Text(
                                                        'อัพโหลดรูปภาพ',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                onTap: () {
                                                  controller.formController
                                                      .getImage(
                                                          ImageSource.gallery,
                                                          controller);
                                                },
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              const Text(
                                                'หรือ',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              SizedBox(
                                                height: 45,
                                                width: 150,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    controller.formController
                                                        .getImage(
                                                            ImageSource.camera,
                                                            controller);
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    //primary: Colors.pinkAccent,
                                                    backgroundColor:
                                                        Colors.pinkAccent,
                                                    shape:
                                                        BeveledRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                  ),
                                                  // padding: const EdgeInsets.all(0.0),
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10.0,
                                                            bottom: 10),
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Icon(
                                                            Icons.camera_alt,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        Text(
                                                          " ถ่ายรูป",
                                                          style: TextStyle(
                                                              fontSize: 15.0,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            : Image.file(
                                File(controller
                                    .formController.selectedImagePath.value),
                              ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: controller.formController.selectedImagePath.value == ''
                    ? false
                    : true,
                child: Positioned(
                  top: -5,
                  right: -25,
                  child: RawMaterialButton(
                    fillColor: Colors.red,
                    onPressed: () {
                      controller.formController.clearImage(controller);
                    },
                    padding: const EdgeInsets.all(0),
                    shape: const CircleBorder(),
                    child: const Icon(
                        IconData(0xe16a, fontFamily: 'MaterialIcons'),
                        color: Colors.white),
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
