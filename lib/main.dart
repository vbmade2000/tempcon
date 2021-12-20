import "package:flutter/material.dart";

void main() {
  return runApp(TempConApp());
}

class TempConApp extends StatefulWidget {
  const TempConApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TempConAppState();
  }
}

class TempConAppState extends State<TempConApp> {
  var from = "c";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Temperature Converter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Temperature Converter"),
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                child: TextField(
                  autofocus: true,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(), hintText: "Celsius"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_downward),
                    onPressed: () {
                      print("First button");
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_upward_sharp),
                    onPressed: () {
                      print("Second button");
                    },
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                child: TextField(
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(), hintText: "Fahrenheit"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
