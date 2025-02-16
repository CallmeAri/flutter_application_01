// ignore_for_file: file_names

import 'package:flutter_application_01/pages/drawer_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  final Function(String) onTextChanged;

  const FirstPage({super.key, required this.onTextChanged});
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool isSwitched = true;
  TextEditingController textController = TextEditingController();
  String textDisplay = " ";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //DISPLAY TEXT
        const Padding(
          padding: EdgeInsets.only(top: 35),
          child: Text(
            "This is a test from WISPOTECH",
            style: TextStyle(fontSize: 15),
          ),
        ),
//TEXT FIELD
        Container(
          padding: const EdgeInsets.all(30),
          child: TextField(
            decoration:
                const InputDecoration(helperText: "Inset your full name"),
            controller: textController,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                textDisplay = textController.text;
              });
              widget.onTextChanged(textDisplay);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DrawerPage(textDisplay: textDisplay),
                ),
              );
            },
            child: const Text("Submit")),
        const SizedBox(
          height: 15,
        ),

        Row(
          children: [
            Expanded(
              child:CustomSwitch() 
            ),
          ],
        )
      ],
    );
  }
}


class CustomSwitch extends StatefulWidget {
  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    double trackWidth = MediaQuery.of(context).size.width * 0.9; // عرض ۹۰٪ صفحه
    double trackHeight = 30; // ارتفاع Track
    double thumbSize = 28; // اندازه دایره

    return GestureDetector(
      onTap: () {
        setState(() {
          isOn = !isOn;
        });
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Track (پس‌زمینه‌ی سوییچ)
          Container(
            width: trackWidth,
            height: trackHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isOn ? Colors.green[400] : Colors.grey[400],
            ),
          ),
          // خود سوییچ (مخفی)
          Opacity(
            opacity: 0.0, // کاملاً مخفی می‌شود
            child: Switch(
              value: isOn,
              onChanged: (bool value) {
                setState(() {
                  isOn = value;
                });
              },
            ),
          ),
          // دایره‌ی اصلی Thumb
          AnimatedPositioned(
            duration: Duration(milliseconds: 200),
            left: isOn ? trackWidth - thumbSize - 5 : 5, // حرکت نرم به دو طرف
            child: Container(
              width: thumbSize,
              height: thumbSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    spreadRadius: 1,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}