import "package:flutter/material.dart";

void main() {
  return runApp(TempConApp());
}

class TempConApp extends StatelessWidget {
  const TempConApp({Key? key}) : super(key: key);

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
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        autofocus: true,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: "Celsius"),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: "Fahrenheit"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
