import "package:flutter/material.dart";
import "package:string_validator/string_validator.dart" as validator;

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
  var celsius = 0.0;
  var fahrenheit = 0.0;

  var cTextController = TextEditingController();
  var fTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    this.cTextController.text = 0.toString();
    this.fTextController.text = 0.toString();

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
                  controller: this.cTextController,
                  autofocus: true,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "Celsius",
                      labelText: "Celsius"),
                  onSubmitted: (data) {
                    this.celsius = double.parse(data);
                    this.cTextController.text = double.parse(data).toString();
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_downward),
                    onPressed: () {
                      if (!validator.isFloat(this.cTextController.text)) {
                        print("Value must be a numerical");
                        return;
                      }
                      this.fTextController.text =
                          ((double.parse(this.cTextController.text) * 1.8) + 32)
                              .toString();
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_upward_sharp),
                    onPressed: () {
                      if (!validator.isFloat(this.fTextController.text)) {
                        print("Value must be a numerical");
                        return;
                      }
                      var t1 = double.parse(this.fTextController.text) - 32;
                      var t2 = (t1 * (5 / 9)).toString();
                      this.cTextController.text = t2.toString();
                    },
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                child: TextField(
                  controller: fTextController,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "Fahrenheit",
                      labelText: "Fahrenheit"),
                  onSubmitted: (data) {
                    this.fahrenheit = double.parse(data);
                    this.fTextController.text = double.parse(data).toString();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
