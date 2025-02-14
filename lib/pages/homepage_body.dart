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
            decoration: const InputDecoration(helperText:"Inset your full name"),
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
// Form field
        // Form(
        //     key: _formkey,
        //     child: Padding(
        //       padding: const EdgeInsets.all(25.0),
        //       child: Column(
        //         children: <Widget>[
        //           TextFormField(
        //             validator: (String? value) {
        //               if (value!.isEmpty) {
        //                 return "You can't have an empty name!";
        //               }
        //               if (value.length < 2) {
        //                 return "Name most have more than one character!";
        //               }
        //               return null;
        //             },
        //             decoration: InputDecoration(
        //               label: Icon(Icons.account_box),
        //               helperText: "Username",
        //               hintText: "Hint",
        //             ),
        //           )
        //         ],
        //       ),
        //     )),
      ],
    );
  }
}
