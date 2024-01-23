import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter_3/controllers/main_controller.dart';
import 'package:test_flutter_3/models/form_label_model.dart';

class MainSubmitBottom extends StatelessWidget {
  const MainSubmitBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      dispose: (state) {
        state.controller?.formController.onClose();
      },
      builder: (controller) {
        return ElevatedButton(
          onPressed: () {
            if (controller.formController.formKey.currentState!.validate()) {
              // If the form is valid, display a snackbar. In the real world,
              // you'd often call a server or save the information in a database.
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'รูปภาพ (path): ${controller.formController.selectedImagePath} '),
                      Text(
                          'รูปภาพ (ขนาด): ${controller.formController.selectedImageSize} '),
                      Text(
                          'แม่โค: ${controller.formController.cowMomNameController.text} '),
                      Text(
                          'พ่อโค: ${controller.formController.cowDadNameController.text} '),
                      Text(
                          'เบอร์ลูกโค: ${controller.formController.cowCodeController.text} '),
                      Text(
                          'nid: ${controller.formController.nidController.text} '),
                      Text(
                          'rfid: ${controller.formController.rfidController.text} '),
                      Text(
                          'dpo: ${controller.formController.dpoController.text} '),
                      Text(
                          'ชื่อลูกโค: ${controller.formController.cowNameController.text} '),
                      Text(
                          'วันเกิดโค: ${controller.formController.dateController.text} '),
                      Text('อายุ: ${controller.formController.age.value} วัน'),
                      Text('เพศโค: ${controller.formController.cowSex} '),
                      Text('ประเภทโค: ${controller.formController.cowType} '),
                      Text(
                          'ข้อมูลสายพันธุ์: ${controller.formController.breed} '),
                      Text('โรงเรือน: ${controller.formController.house} '),
                      Text('ฝูง: ${controller.formController.proportion} '),
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
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          // padding: const EdgeInsets.all(0.0),
          child: Container(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  labelNextButton,
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
