import 'dart:io';
import 'package:cupertino_radio_choice/cupertino_radio_choice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:test_flutter_3/controllers/main_controller.dart';

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
              "แจ้งเกิดลูกโค",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Form(
            key: controller.formcontroller.formKey,
            child: Padding(
              //padding: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF7E7E7E),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.all(8.0),
                    child: Column(children: [
                      Obx(() =>
                          controller.formcontroller.selectedImagePath.value ==
                                  ''
                              ? Text(
                                  'Select image from camera/gally',
                                  style: TextStyle(fontSize: 20),
                                )
                              : Image.file(File(controller
                                  .formcontroller.selectedImagePath.value))),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(() => Text(
                            controller.formcontroller.selectedImageSize.value ==
                                    ''
                                ? ''
                                : controller
                                    .formcontroller.selectedImageSize.value,
                            style: TextStyle(fontSize: 20),
                          )),
                      ElevatedButton(
                        onPressed: () {
                          controller.getImage(ImageSource.camera);
                        },
                        // padding: const EdgeInsets.all(0.0),
                        child: Container(
                          padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.camera,
                                    color: Colors.white,
                                  )),
                              Container(
                                  child: Text(
                                "Camera",
                                style: TextStyle(
                                    fontSize: 15.0, color: Colors.white),
                              )),
                            ],
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.pinkAccent,
                            backgroundColor: Colors.pinkAccent,
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          controller.getImage(ImageSource.gallery);
                        },
                        // padding: const EdgeInsets.all(0.0),
                        child: Container(
                          padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.image,
                                    color: Colors.white,
                                  )),
                              Container(
                                  child: Text(
                                "gallery",
                                style: TextStyle(
                                    fontSize: 15.0, color: Colors.white),
                              )),
                            ],
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.pinkAccent,
                            backgroundColor: Colors.pinkAccent,
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Visibility(
                        visible: controller.isVisibleImage.value,
                        child: ElevatedButton(
                          onPressed: () {
                            controller.clearImage();
                          },
                          // padding: const EdgeInsets.all(0.0),
                          child: Container(
                            padding:
                                const EdgeInsets.only(top: 10.0, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.cancel,
                                      color: Colors.white,
                                    )),
                                Container(
                                    child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.white),
                                )),
                              ],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.redAccent,
                              backgroundColor: Colors.redAccent,
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF7E7E7E),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.all(8.0),
                    child: Column(children: [
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller:
                            controller.formcontroller.cowMomNameController,
                        decoration: InputDecoration(
                          label: Text('ชื่อแม่โค'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller:
                            controller.formcontroller.cowDadNameController,
                        decoration: InputDecoration(
                            label: Text('ชื่อพ่อโค'),
                            border: OutlineInputBorder()),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF7E7E7E),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.all(8.0),
                    child: Column(children: [
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: controller.formcontroller.cowCodeController,
                        decoration: InputDecoration(
                            label: Text('เบอร์ลูกโค (ระบบฟาร์ม)'),
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: controller.changeStatus,
                        // padding: const EdgeInsets.all(0.0),
                        child: Container(
                          padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(left: 1.0),
                                  child: Text(
                                    "เบอร์ลูกโคเพิ่มเติม",
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.white),
                                  )),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.arrow_drop_down_circle_outlined,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            backgroundColor: Colors.green,
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Visibility(
                        visible: controller.isVisible.value,
                        child: TextFormField(
                          controller: controller.formcontroller.nidController,
                          decoration: InputDecoration(
                              label: Text('nid'), border: OutlineInputBorder()),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Visibility(
                        visible: controller.isVisible.value,
                        child: TextFormField(
                          controller: controller.formcontroller.rfidController,
                          decoration: InputDecoration(
                              label: Text('rfid'),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Visibility(
                        visible: controller.isVisible.value,
                        child: TextFormField(
                          controller: controller.formcontroller.dpoController,
                          decoration: InputDecoration(
                              label: Text('dpo'), border: OutlineInputBorder()),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: controller.formcontroller.cowNameController,
                        decoration: InputDecoration(
                            label: Text('ชื่อลูกโค)'),
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
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
                              lastDate: DateTime.now());

                          if (pickedDate != null) {
                            controller.formcontroller.dateController.text =
                                DateFormat('EEEE, MMM d, yyyy')
                                    .format(pickedDate);
                            controller.daysBetween(pickedDate, DateTime.now());
                          }
                        },
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('อายุ '),
                            Text(
                              '${controller.formcontroller.age}',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(' วัน')
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'ประเภทโค',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
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
                      SizedBox(
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
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'สายพันธุ์',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
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
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 200,
                              child: TextField(
                                controller: controller.textarea1,
                                decoration: InputDecoration(
                                    label: Text('สายพันธุ์'),
                                    border: OutlineInputBorder()),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              child: TextField(
                                controller: controller.textarea2,
                                decoration: InputDecoration(
                                    label: Text('สัดส่วน'),
                                    border: OutlineInputBorder()),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('ข้อมูลสายพันธ์ุ'),
                            Text('${controller.formcontroller.breed()}/100%')
                          ],
                        ),
                      ),
                      SizedBox(
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
                      SizedBox(
                        height: 15,
                      ),
                      DropdownButtonFormField<String>(
                        icon: Icon(Icons.arrow_drop_down_circle_outlined),
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
                      SizedBox(
                        height: 15,
                      ),
                    ]),
                  ),
                  SizedBox(
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
                                'อายุ: ${controller.formcontroller.age.value} '),
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
                    // padding: const EdgeInsets.all(0.0),
                    child: Container(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              child: Text(
                            "ถัดไป",
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.white),
                          )),
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.pinkAccent,
                        backgroundColor: Colors.pinkAccent,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                  SizedBox(
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
