import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:test_flutter_3/controllers/main_controller.dart';

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
            title: const Text(
              "แจ้งเกิดลูกโค",
              style: TextStyle(color: Colors.white),
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
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: Stack(
                      children: [
                        DottedBorder(
                          color: Colors.pinkAccent,
                          strokeWidth: 3,
                          dashPattern: const [10, 6],
                          radius: const Radius.circular(5),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                            child: Container(
                              /*
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.pinkAccent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        */
                              //inner container
                              //height of inner container
                              //height:180,
                              //width to 100% match to parent container.
                              //width: double.infinity,
                              //background color of inner container
                              //color: Color.fromARGB(255, 228, 226, 226),

                              /*
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/Cowicon.png'),
                                fit: BoxFit.cover),
                          ),
                          */

                              color: Colors.grey[600],
                              padding: const EdgeInsets.all(8.0),
                              //height: 250,
                              width: double.infinity,
                              child: Column(
                                children: [
                                  Obx(
                                    () =>
                                        controller.formcontroller
                                                    .selectedImagePath.value ==
                                                ''
                                            ? Stack(
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    child: Image.asset(
                                                        'assets/images/Cowicon.png',
                                                        scale: 1.5,
                                                        color:
                                                            Colors.grey[800]),
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    child: Column(children: [
                                                      Visibility(
                                                        visible: controller
                                                                    .formcontroller
                                                                    .selectedImagePath
                                                                    .value ==
                                                                ''
                                                            ? true
                                                            : false,
                                                        child: Column(
                                                          children: [
                                                            const SizedBox(
                                                                height: 30),
                                                            InkWell(
                                                              child: Container(
                                                                width: 120,
                                                                height: 80,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  border: Border.all(
                                                                      color: Colors.white,
                                                                      //width: 5.0,
                                                                      style: BorderStyle.solid),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20),
                                                                ),
                                                                child:
                                                                    const Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .cloud_upload_outlined,
                                                                      size: 30,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    SizedBox(
                                                                        height:
                                                                            5),
                                                                    Text(
                                                                      'อัพโหลดรูปภาพ',
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              onTap: () {
                                                                controller.getImage(
                                                                    ImageSource
                                                                        .gallery);
                                                              },
                                                            ),
                                                            const SizedBox(
                                                              height: 15,
                                                            ),
                                                            const Text(
                                                              'หรือ',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 15,
                                                            ),
                                                            SizedBox(
                                                              height: 45,
                                                              width: 150,
                                                              child:
                                                                  ElevatedButton(
                                                                onPressed: () {
                                                                  controller.getImage(
                                                                      ImageSource
                                                                          .camera);
                                                                },
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                        //primary: Colors.pinkAccent,
                                                                        backgroundColor:
                                                                            Colors
                                                                                .pinkAccent,
                                                                        shape: BeveledRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5))),
                                                                // padding: const EdgeInsets.all(0.0),
                                                                child:
                                                                    Container(
                                                                  padding: const EdgeInsets
                                                                      .only(
                                                                      top: 10.0,
                                                                      bottom:
                                                                          10),
                                                                  child:
                                                                      const Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .center,
                                                                          child:
                                                                              Icon(
                                                                            Icons.camera_alt,
                                                                            color:
                                                                                Colors.white,
                                                                          )),
                                                                      Text(
                                                                        " ถ่ายรูป",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                15.0,
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
                                                    ]),
                                                  )
                                                ],
                                              )
                                            : Image.file(
                                                File(controller.formcontroller
                                                    .selectedImagePath.value),
                                              ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  /*
                                    Obx(() => Text(
                                          controller
                                                      .formcontroller
                                                      .selectedImageSize
                                                      .value ==
                                                  ''
                                              ? ''
                                              : controller.formcontroller
                                                  .selectedImageSize.value,
                                          style: TextStyle(fontSize: 20),
                                        )),
                                       */

                                  /*
                                    Visibility(
                                        visible: controller.formcontroller
                                                    .selectedImagePath.value ==
                                                ''
                                            ? true
                                            : false,
                                        child: Column(
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                controller.getImage(
                                                    ImageSource.camera);
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  //primary: Colors.pinkAccent,
                                                  backgroundColor:
                                                      Colors.pinkAccent,
                                                  shape: BeveledRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5))),
                                              // padding: const EdgeInsets.all(0.0),
                                              child: Container(
                                                padding: const EdgeInsets.only(
                                                    top: 10.0, bottom: 10),
                                                child: const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Icon(
                                                          Icons.camera_alt,
                                                          color: Colors.white,
                                                        )),
                                                    Text(
                                                      " ถ่ายรูป",
                                                      style: TextStyle(
                                                          fontSize: 15.0,
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                controller.getImage(
                                                    ImageSource.gallery);
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  //primary: Colors.pinkAccent,
                                                  backgroundColor:
                                                      Colors.pinkAccent,
                                                  shape: BeveledRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5))),
                                              // padding: const EdgeInsets.all(0.0),
                                              child: Container(
                                                padding: const EdgeInsets.only(
                                                    top: 10.0, bottom: 10),
                                                child: const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Icon(
                                                          Icons
                                                              .cloud_upload_outlined,
                                                          color: Colors.white,
                                                        )),
                                                    Text(
                                                      " อัพโหลดรูปภาพ",
                                                      style: TextStyle(
                                                          fontSize: 15.0,
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Visibility(
                                      //visible: controller.isVisibleImage.value,
                                      visible: controller.formcontroller
                                                  .selectedImagePath.value ==
                                              ''
                                          ? false
                                          : true,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          controller.clearImage();
                                        },
                                        style: ElevatedButton.styleFrom(
                                            //primary: Colors.redAccent,
                                            backgroundColor: Colors.redAccent,
                                            shape: BeveledRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5))),
                                        // padding: const EdgeInsets.all(0.0),
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                              top: 10.0, bottom: 10),
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Icon(
                                                    Icons.cancel,
                                                    color: Colors.white,
                                                  )),
                                              Text(
                                                "Cancel",
                                                style: TextStyle(
                                                    fontSize: 15.0,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    */
                                ],
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: controller
                                      .formcontroller.selectedImagePath.value ==
                                  ''
                              ? false
                              : true,
                          child: Positioned(
                            top: -5,
                            right: -25,
                            child: RawMaterialButton(
                              fillColor: Colors.red,
                              onPressed: () {
                                controller.clearImage();
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
                    child: Column(children: [
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller:
                            controller.formcontroller.cowMomNameController,
                        decoration: const InputDecoration(
                          label: Text('ชื่อแม่โค'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller:
                            controller.formcontroller.cowDadNameController,
                        decoration: const InputDecoration(
                            label: Text('ชื่อพ่อโค'),
                            border: OutlineInputBorder()),
                      ),
                    ]),
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
                    child: Column(children: [
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: controller.formcontroller.cowCodeController,
                        decoration: const InputDecoration(
                            label: Text('เบอร์ลูกโค (ระบบฟาร์ม)'),
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
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
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.white),
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
                                controller:
                                    controller.formcontroller.nidController,
                                decoration: const InputDecoration(
                                    label: Text('nid'),
                                    border: OutlineInputBorder()),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                controller:
                                    controller.formcontroller.rfidController,
                                decoration: const InputDecoration(
                                    label: Text('rfid'),
                                    border: OutlineInputBorder()),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                controller:
                                    controller.formcontroller.dpoController,
                                decoration: const InputDecoration(
                                    label: Text('dpo'),
                                    border: OutlineInputBorder()),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                            ],
                          )),
                      TextFormField(
                        controller: controller.formcontroller.cowNameController,
                        decoration: const InputDecoration(
                            label: Text('ชื่อลูกโค'),
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'วันเกิดโค',
                          suffixIcon:
                              Icon(Icons.arrow_drop_down_circle_outlined),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.5)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.5)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.5)),
                        ),
                        controller: controller.formcontroller.dateController,
                        readOnly: true,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950),
                            lastDate: DateTime.now(),
                            builder: (context, child) => Theme(
                              data: ThemeData().copyWith(
                                  colorScheme: const ColorScheme.dark(
                                    primary: Colors.pinkAccent,
                                    onPrimary: Colors.white,
                                    onSurface: Colors.black,
                                  ),
                                  dialogBackgroundColor: Colors.white,
                                  datePickerTheme: const DatePickerThemeData(
                                    headerBackgroundColor: Colors.pinkAccent,
                                    headerForegroundColor: Colors.white,
                                    backgroundColor: Colors.white,
                                  ),
                                  textButtonTheme: TextButtonThemeData(
                                      style: TextButton.styleFrom(
                                          foregroundColor: Colors.black))),
                              child: child!,
                            ),
                          );

                          if (pickedDate != null) {
                            controller.formcontroller.dateController.text =
                                DateFormat('EEEE, MMM d, yyyy')
                                    .format(pickedDate);
                            controller.daysBetween(pickedDate, DateTime.now());
                          }
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('อายุ '),
                          Text(
                            '${controller.formcontroller.age}',
                            style: const TextStyle(fontSize: 20),
                          ),
                          const Text(' วัน')
                        ],
                      ),
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
                      /*
                      Container(
                        child: Row(
                          children: [
                            CupertinoRadioChoice(
                                selectedColor: Colors.pinkAccent,
                                choices: {
                                  'male': 'เพศผู้',
                                  'female': 'เพศเมีย'
                                },
                                onChange: (selectedGender) {
                                  controller.formcontroller.cowSex.value =
                                      selectedGender.toString();
                                },
                                initialKeyValue: 'male'),
                          ],
                        ),
                      ),
                     */
                      Center(
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                controller.changeCowSex('female');
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      controller.formcontroller.cowSex.value ==
                                              'female'
                                          ? Colors.pinkAccent
                                          : Colors.grey[350]),
                              child: SizedBox(
                                width: 75,
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
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
                                      controller.formcontroller.cowSex.value ==
                                              'male'
                                          ? Colors.pinkAccent
                                          : Colors.grey[350]),
                              child: SizedBox(
                                width: 60,
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
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
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      DropdownButtonFormField<String>(
                        icon: const Icon(Icons.arrow_drop_down_circle_outlined),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        hint: const Text('สถานะนำเข้า'),
                        onChanged: (value) {
                          controller.formcontroller.cowType.value =
                              value.toString();
                        },
                        items: <String>[
                          'ลูกโค',
                          'วัยรุ่นโค',
                          'พ่อโค',
                          'แม่โค',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
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
                      /*
                      Center(
                        child: CupertinoRadioChoice(
                            choices: {
                              'more5': '5 สายพันธ์ุ',
                              'more8': '8 สายพันธ์ุ',
                              'normal': 'สัดส่วน'
                            },
                            onChange: (selectedGender) {
                              if (selectedGender != 'normal') {
                                controller.setText();
                              } else {
                                controller.resetText();
                              }
                            },
                            initialKeyValue: 'normal'),
                      ),
                      */
                      Center(
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                controller.changeBreed('5 สายพันธุ์');
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: controller.breedText.value ==
                                          '5 สายพันธุ์'
                                      ? Colors.blue
                                      : Colors.grey[350]),
                              child: const Row(
                                children: [
                                  Text(
                                    '5 สายพันธุ์',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                controller.changeBreed('8 สายพันธุ์');
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: controller.breedText.value ==
                                          '8 สายพันธุ์'
                                      ? Colors.blue
                                      : Colors.grey[350]),
                              child: const Row(
                                children: [
                                  Text(
                                    '8 สายพันธุ์',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                controller.changeBreed('สัดส่วน');
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      controller.breedText.value == 'สัดส่วน'
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
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
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
                        child: controller.breedText.value == 'สัดส่วน'
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
                                            border: Border.all(
                                                width: 1, color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(5),
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
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 3),
                                            child: const Text(
                                              'สายพันธู์',
                                              style:
                                                  TextStyle(color: Colors.grey),
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
                                            border: Border.all(
                                                width: 1, color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
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
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 3),
                                            child: const Text(
                                              'สัดส่วน',
                                              style:
                                                  TextStyle(color: Colors.grey),
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
                                            border: Border.all(
                                                width: 1, color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(5),
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
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 3),
                                            child: const Text(
                                              'สายพันธู์',
                                              style:
                                                  TextStyle(color: Colors.grey),
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
                                            border: Border.all(
                                                width: 1, color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(5),
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
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 3),
                                            child: const Text(
                                              'สัดส่วน',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                      ),
                      /*
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            flex: 2,
                            child: TextField(
                              controller: controller.textarea1,
                              decoration: const InputDecoration(
                                  label: Text('สายพันธุ์'),
                                  border: OutlineInputBorder()),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            child: controller.breedText.value == 'สัดส่วน'
                                ? const Flexible(
                                    child: TextField(
                                      //controller: controller.textarea2,
                                      decoration: InputDecoration(
                                          label: Text('สัดส่วน'),
                                          border: OutlineInputBorder()),
                                    ),
                                  )
                                : const SizedBox(
                                    width: 100,
                                    child: TextField(
                                      //controller: controller.textarea2,
                                      decoration: InputDecoration(
                                          label: Row(
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
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                          ),

                          /*
                          Flexible(
                            child: TextField(
                              controller: controller.textarea2,
                              decoration: InputDecoration(
                                  label: Text('สัดส่วน'),
                                  border: OutlineInputBorder()),
                            ),
                          ),
                      
                          SizedBox(
                            width: 100,
                            child: TextField(
                              controller: controller.textarea2,
                              decoration: InputDecoration(
                                  label: Row(
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
                                  border: OutlineInputBorder()),
                            ),
                          ),
                          */
                        ],
                      ),
                      */
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
                                style: TextStyle(
                                    fontSize: 15, color: Colors.pinkAccent),
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
                      const SizedBox(
                        height: 25,
                      ),
                      DropdownButtonFormField<String>(
                        icon: const Icon(Icons.arrow_drop_down_circle_outlined),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        hint: const Text('เลือกโรงเรือน'),
                        onChanged: (value) {
                          controller.formcontroller.house.value =
                              value.toString();
                        },
                        items: <String>[
                          'โรงเรือน1',
                          'โรงเรือน2',
                          'โรงเรือน3',
                          'โรงเรือน4'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      DropdownButtonFormField<String>(
                        icon: const Icon(Icons.arrow_drop_down_circle_outlined),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        hint: const Text('เลือกฝูง'),
                        onChanged: (value) {
                          controller.formcontroller.proportion.value =
                              value.toString();
                        },
                        items: <String>['ฝูง1', 'ฝูง2', 'ฝูง3', 'ฝูง4']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'รูปภาพ (path): ${controller.formcontroller.selectedImagePath} '),
                            Text(
                                'รูปภาพ (ขนาด): ${controller.formcontroller.selectedImageSize} '),
                            Text(
                                'แม่โค: ${controller.formcontroller.cowMomNameController.text} '),
                            Text(
                                'พ่อโค: ${controller.formcontroller.cowDadNameController.text} '),
                            Text(
                                'เบอร์ลูกโค: ${controller.formcontroller.cowCodeController.text} '),
                            Text(
                                'nid: ${controller.formcontroller.nidController.text} '),
                            Text(
                                'rfid: ${controller.formcontroller.rfidController.text} '),
                            Text(
                                'dpo: ${controller.formcontroller.dpoController.text} '),
                            Text(
                                'ชื่อลูกโค: ${controller.formcontroller.cowNameController.text} '),
                            Text(
                                'วันเกิดโค: ${controller.formcontroller.dateController.text} '),
                            Text(
                                'อายุ: ${controller.formcontroller.age.value} วัน'),
                            Text('เพศโค: ${controller.formcontroller.cowSex} '),
                            Text(
                                'ประเภทโค: ${controller.formcontroller.cowType} '),
                            Text(
                                'ข้อมูลสายพันธุ์: ${controller.formcontroller.breed} '),
                            Text(
                                'โรงเรือน: ${controller.formcontroller.house} '),
                            Text(
                                'ฝูง: ${controller.formcontroller.proportion} '),
                          ],
                        )),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        //primary: Colors.pinkAccent,
                        backgroundColor: Colors.pinkAccent,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    // padding: const EdgeInsets.all(0.0),
                    child: Container(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ถัดไป",
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
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
