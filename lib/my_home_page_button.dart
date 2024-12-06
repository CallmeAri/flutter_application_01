import 'package:flutter/material.dart';
import 'package:flutter_application_01/pages/drawer_page.dart';
import 'package:flutter_application_01/pages/page_one.dart';

class MyHomePageButton extends StatefulWidget {
  const MyHomePageButton({super.key});

  @override
  State<MyHomePageButton> createState() => _MyHomePageButtonState();
}

class _MyHomePageButtonState extends State<MyHomePageButton> {
  bool isCheckedBoxMon = false;
  bool isCheckedBoxTue = false;
  bool isCheckedBoxWed = false;
  bool isCheckedBoxThu = false;
  bool isCheckedBoxFri = false;
  bool isCheckedBoxSat = false;
  bool isCheckedBoxSun = false;
  bool isSwiched = true;
  bool isSwichedLight = true;

  Widget checkbox(String title, bool boolValue) {
    return Column(
      children: [
         Text(title),
        Checkbox(
            value: boolValue,
            onChanged: (bool? value) {
              setState(() {
                switch (title) {
                  case "Mon":
                    isCheckedBoxMon = value!;
                    break;
                  case "Tue":
                    isCheckedBoxTue = value!;
                    break;
                  case "Wed":
                    isCheckedBoxWed = value!;
                    break;
                  case "Thu":
                    isCheckedBoxThu = value!;
                    break;
                  case "Fri":
                    isCheckedBoxFri = value!;
                    break;
                  case "Sat":
                    isCheckedBoxSat = value!;
                    break;
                    case "Sun":
                    isCheckedBoxSun = value!;
                    break;
                }
              });
            })
      ],
    );
  }

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black,
          // APPBAR
          appBar: AppBar(
            backgroundColor: const Color(0XFFF2F2F2),
            foregroundColor: Colors.black54,
            title: const Text("Moochi"),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.inbox_rounded),
                tooltip: 'INBOX',
                onPressed: () {
                  // handle the press
                },
              ),
            ],
          ),
          // FLOATINGACTIONBUTTON
          floatingActionButton: FloatingActionButton(
              onPressed: () {},
              shape: const CircleBorder(),
              foregroundColor: Colors.pink,
              backgroundColor: Colors.white,
              child: const Icon(Icons.add_circle_outline_sharp)),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          // bottomNavigationBar: BottomAppBar(
          //   shape: const CircularNotchedRectangle(),
          //   notchMargin: 10.0,
          //   color: const Color(0XFFF3EDF7),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     mainAxisSize: MainAxisSize.max,
          //     children: [
          //       IconButton(
          //         color: Colors.black54,
          //         hoverColor: const Color.fromARGB(255, 17, 17, 17),
          //         icon: const Icon(Icons.home, size: 35),
          //         tooltip: 'Home',
          //         onPressed: () {
          //           // handle the press
          //         },
          //       ),
          //       IconButton(
          //         color: Colors.black54,
          //         icon: const Icon(Icons.shopping_bag_outlined, size: 35),
          //         tooltip: 'Buy',
          //         onPressed: () => print('Button pressed!'),
          //       ),
          //       IconButton(
          //         color: Colors.black54,
          //         icon: const Icon(
          //           Icons.favorite_border_outlined,
          //           size: 35,
          //         ),
          //         tooltip: 'Like',
          //         onPressed: () {
          //           // handle the press
          //         },
          //       ),
          //       IconButton(
          //         color: Colors.black54,
          //         icon: const Icon(Icons.explore_rounded, size: 35),
          //         tooltip: 'Explore',
          //         onPressed: () {
          //           // handle the press
          //         },
          //       ),
          //     ],
          //   ),
          // ),
          bottomSheet: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: const Border.symmetric(horizontal: BorderSide.none),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          autocorrect: true,
                          decoration: const InputDecoration(
                              hintText: "USERNAME",
                              border: OutlineInputBorder()),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "Username is required";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          autocorrect: true,
                          obscureText: true,
                          decoration: const InputDecoration(
                              hintText: "PASSWORD",
                              border: OutlineInputBorder()),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "Password is required";
                            }
                            if (value.length < 8) {
                              return "- at least 8 characters";
                            }
                            if (!RegExp(r"(?=.*[A-Z])").hasMatch(value)) {
                              return "- must contain at least 1 uppercase letter";
                            }
                            if (!RegExp(r"(?=.*[a-z])").hasMatch(value)) {
                              return "- must contain atleast 1 lowercase letter";
                            }
                            if (!RegExp(r"(?=.*\d)").hasMatch(value)) {
                              return "- must contain at least 1 number";
                            }
                            
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(color: Colors.red),
                          autocorrect: false,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "EMAIL ADDRESS",
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "Email is required";
                            }
                            if (!RegExp(
                                    r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                                .hasMatch(value)) {
                              return "Please insert valid Email adress";
                            }
                            
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.greenAccent),
                                  onPressed: () {
                                    if (_formkey.currentState!.validate()) {
                                      print("The form is valid");
                                    }
                                  },
                                  child: const Text(
                                    "Submit",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Switch(
                            activeColor: Colors.blueAccent,
                            value: isSwiched,
                            onChanged: (bool value) {
                              setState(() {
                                isSwiched = value;
                              });
                            }),
                        SwitchListTile(
                          title: const Text("Light MODE"),
                          value: isSwichedLight,
                          onChanged: (bool value) {
                            setState(() {
                              isSwichedLight = value;
                            });
                          },
                          secondary: const Icon(Icons.lightbulb_outline),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              checkbox("Mon", isCheckedBoxMon),
                              checkbox("Tue", isCheckedBoxTue),
                              checkbox("Wed", isCheckedBoxWed),
                              checkbox("Thu", isCheckedBoxThu),
                              checkbox("Fri", isCheckedBoxFri),
                              checkbox("Sat", isCheckedBoxSat),
                              checkbox("Sun", isCheckedBoxSun),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
          // DRAWER
          drawer: const DrawerPage(),
          //BODY
          body: const SafeArea(child: FirstPage())),
    );
  }
}
