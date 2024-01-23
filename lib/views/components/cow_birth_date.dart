import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:test_flutter_3/controllers/main_controller.dart';

class CowBirthDate extends StatelessWidget {
  const CowBirthDate({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Main_controller>(
      init: Main_controller(),
      dispose: (state) {},
      builder: (controller) {
        return Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'วันเกิดโค',
                suffixIcon: Icon(Icons.arrow_drop_down_circle_outlined),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.5)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.5)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.5)),
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
                      DateFormat('EEEE, MMM d, yyyy').format(pickedDate);
                  controller.formcontroller
                      .daysBetween(pickedDate, DateTime.now());
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
          ],
        );
      },
    );
  }
}
