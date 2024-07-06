import 'package:flutter/material.dart';

class TimePickerFlutter extends StatefulWidget {
  const TimePickerFlutter({super.key});

  @override
  State<TimePickerFlutter> createState() => _TimePickerFlutterState();
}

class _TimePickerFlutterState extends State<TimePickerFlutter> {
  late TimeOfDay time;

  _setSelectTime() async {
    TimeOfDay? pickerTime =
        await showTimePicker(context: context, initialTime: time);

    if (pickerTime != null) {
      setState(() {
        time = pickerTime;
      });
    }
  }

  @override
  void initState() {
    time = TimeOfDay.now();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Time Picker FLutter"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  _setSelectTime();
                },
                child: Text(
                  "Pick you Time",
                  style: TextStyle(fontSize: 26, color: Colors.white),
                )),
            Text("${time.hour} : ${time.minute}"),
          ],
        ),
      ),
    );
  }
}
