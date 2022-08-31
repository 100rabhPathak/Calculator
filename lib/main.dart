import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'calcy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'calcy'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
            width: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage("assets/calcu.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.dstATop),
              ),
            ),

            // width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage("assets/calcu.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.dstATop),
                    ),
                  ),
                  child: Column(
                    children: [
                      Card(
                        elevation: 5,
                        color: Colors.transparent,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            side: BorderSide(width: 5, color: Colors.blueGrey)),
                        child: Column(children: [
                          Card(
                            elevation: 5,
                            // color: Colors.transparent,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                side:
                                    BorderSide(width: 5, color: Colors.green)),
                            child: TextFormField(
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                decimal: true,
                              ),
                              controller: textEditingController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    textEditingController.text = "";
                                  });
                                },
                                child: const CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 40,
                                  child: Text(
                                    "C",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if (textEditingController.text == "") {
                                      textEditingController.text = "";
                                    } else {
                                      textEditingController.text =
                                          textEditingController.text.substring(
                                              0,
                                              textEditingController
                                                      .text.length -
                                                  1);
                                    }
                                  });
                                },
                                child: const CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 40,
                                  child: Text(
                                    "DEL",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    textEditingController.text =
                                        "${textEditingController.text}%";
                                  });
                                },
                                child: const CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 40,
                                  child: Text(
                                    "%",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    textEditingController.text =
                                        "${textEditingController.text}/";
                                  });
                                },
                                child: const CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 40,
                                  child: Text(
                                    "/",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    textEditingController.text =
                                        "${textEditingController.text}1";
                                  });
                                },
                                child: const CircleAvatar(
                                  radius: 40,
                                  child: Text(
                                    "1",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    textEditingController.text =
                                        "${textEditingController.text}2";
                                  });
                                },
                                child: const CircleAvatar(
                                  radius: 40,
                                  child: Text(
                                    "2",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    textEditingController.text =
                                        "${textEditingController.text}3";
                                  });
                                },
                                child: const CircleAvatar(
                                  radius: 40,
                                  child: Text(
                                    "3",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    textEditingController.text =
                                        "${textEditingController.text}*";
                                  });
                                },
                                child: const CircleAvatar(
                                  backgroundColor: Colors.green,
                                  radius: 40,
                                  child: Text(
                                    "*",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    textEditingController.text =
                                        "${textEditingController.text}4";
                                  });
                                },
                                child: const CircleAvatar(
                                  radius: 40,
                                  child: Text(
                                    "4",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    textEditingController.text =
                                        "${textEditingController.text}5";
                                  });
                                },
                                child: const CircleAvatar(
                                  radius: 40,
                                  child: Text(
                                    "5",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    textEditingController.text =
                                        "${textEditingController.text}6";
                                  });
                                },
                                child: const CircleAvatar(
                                  radius: 40,
                                  child: Text(
                                    "6",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    textEditingController.text =
                                        "${textEditingController.text}-";
                                  });
                                },
                                child: const CircleAvatar(
                                  backgroundColor: Colors.green,
                                  radius: 40,
                                  child: Text(
                                    "-",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    textEditingController.text =
                                        "${textEditingController.text}7";
                                  });
                                },
                                child: const CircleAvatar(
                                  radius: 40,
                                  child: Text(
                                    "7",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    textEditingController.text =
                                        "${textEditingController.text}8";
                                  });
                                },
                                child: const CircleAvatar(
                                  radius: 40,
                                  child: Text(
                                    "8",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    textEditingController.text =
                                        "${textEditingController.text}9";
                                  });
                                },
                                child: const CircleAvatar(
                                  radius: 40,
                                  child: Text(
                                    "9",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    textEditingController.text =
                                        "${textEditingController.text}+";
                                  });
                                },
                                child: const CircleAvatar(
                                  radius: 40,
                                  backgroundColor: Colors.green,
                                  child: Text(
                                    "+",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    textEditingController.text =
                                        "${textEditingController.text}.";
                                  });
                                },
                                child: const CircleAvatar(
                                  radius: 40,
                                  child: Text(
                                    ".",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    textEditingController.text =
                                        "${textEditingController.text}0";
                                  });
                                },
                                child: const CircleAvatar(
                                  radius: 40,
                                  child: Text(
                                    "0",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    textEditingController.text =
                                        "${textEditingController.text}00";
                                  });
                                },
                                child: const CircleAvatar(
                                  radius: 40,
                                  child: Text(
                                    "00",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    // setmethod(textEditingController.text);
                                    String p = textEditingController.text;
                                    if (p.indexOf("+") == 0) {
                                      textEditingController.clear();
                                    } else if (p.indexOf("-") == 0) {
                                      textEditingController.clear();
                                    } else if (p.indexOf("*") == 0) {
                                      textEditingController.clear();
                                    } else if (p.indexOf("/") == 0) {
                                      textEditingController.clear();
                                    } else if (p.indexOf("%") == 0) {
                                      textEditingController.clear();
                                    }

                                    if (textEditingController.text.isNotEmpty) {
                                      textEditingController.text =
                                          textEditingController.text
                                              .interpret()
                                              .toString();
                                    }
                                  });
                                },
                                child: const CircleAvatar(
                                  backgroundColor: Colors.green,
                                  radius: 40,
                                  child: Text(
                                    "=",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
