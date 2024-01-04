import 'package:flutter/material.dart';
import 'package:cupertino_radio_choice/cupertino_radio_choice.dart';

class Main_views extends StatelessWidget {
  const Main_views({super.key});

  @override
  Widget build(BuildContext context) {
    var isVisible = false;
    TextEditingController dateInputController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("แจ้งเกิดลูกโค"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text('ชื่อแม่โค'), border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text('ชื่อพ่อโค'), border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text('เบอร์ลูกโค'), border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                isVisible = !isVisible;
              },
              // padding: const EdgeInsets.all(0.0),
              child: Container(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                child: Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 1.0),
                        child: Text(
                          "เบอร์ลูกโคเพิ่มเติม",
                          style: TextStyle(fontSize: 15.0, color: Colors.white),
                        )),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.play_circle_fill)),
                  ],
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  backgroundColor: Colors.red,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            /*
            Container(
              width: 200,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  isVisible = !isVisible;
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    backgroundColor: Colors.red,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                child: Padding(
                  padding: EdgeInsets.only(right: .0),
                  child: const Text('Hidden',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w800,
                      )),
                ),
              ),
            ),
           */
            SizedBox(
              height: 20,
            ),
            Visibility(
              visible: isVisible,
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text('nid'), border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Visibility(
              visible: isVisible,
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text('rfid'), border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Visibility(
              visible: isVisible,
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text('dpo'), border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text('ชื่อลูกโค'), border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Date',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1)),
              ),
              controller: dateInputController,
              readOnly: true,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950),
                    lastDate: DateTime.now());

                if (pickedDate != null) {
                  dateInputController.text = pickedDate.toString();
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            CupertinoRadioChoice(
                choices: {'male': 'Male', 'female': 'Female'},
                onChange: (selectedGender) {},
                initialKeyValue: 'male'),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text('สถานะโค'), border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            CupertinoRadioChoice(
                choices: {'5': '5', '8': '8'},
                onChange: (selectedGender) {},
                initialKeyValue: '5'),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text('สายพัน'), border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text('สัดส่วน'), border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            /*
            DropdownButton(
              hint: const Text('Select Test1'),
              items: <String>['Test1', 'Test2', 'Test3']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
              onChanged: (Stringvalue) {},
            ),
           */
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              hint: const Text('เลือกโรงเรือน'),
              onChanged: (value) {},
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
              height: 20,
            ),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              hint: const Text('เลือกฝูง'),
              onChanged: (value) {},
              items: <String>['ฝูง1', 'ฝูง2', 'ฝูง3', 'ฝูง4']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
