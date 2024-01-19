import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter_3/controllers/main_controller.dart';

class MainSubmitBottom extends StatelessWidget {
  const MainSubmitBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Main_controller>(
      init: Main_controller(),
      dispose: (state) {},
      builder: (controller) {
        return ElevatedButton(
          onPressed: () {
            if (controller.formcontroller.formKey.currentState!.validate()) {
              // If the form is valid, display a snackbar. In the real world,
              // you'd often call a server or save the information in a database.
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
                      Text('อายุ: ${controller.formcontroller.age.value} วัน'),
                      Text('เพศโค: ${controller.formcontroller.cowSex} '),
                      Text('ประเภทโค: ${controller.formcontroller.cowType} '),
                      Text(
                          'ข้อมูลสายพันธุ์: ${controller.formcontroller.breed} '),
                      Text('โรงเรือน: ${controller.formcontroller.house} '),
                      Text('ฝูง: ${controller.formcontroller.proportion} '),
                    ],
                  ),
                ),
              );
              CoolAlert.show(
                context: context,
                backgroundColor: Colors.greenAccent[100]!,
                type: CoolAlertType.success,
                title: 'บันทึกข้อมูลเรียบร้อย',
                confirmBtnColor: Colors.greenAccent,
              );
            } else {
              CoolAlert.show(
                context: context,
                backgroundColor: Colors.redAccent[100]!,
                type: CoolAlertType.error,
                title: 'กรุณากรอกข้อมูลให้ครบ',
                confirmBtnColor: Colors.redAccent,
              );
            }
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
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
