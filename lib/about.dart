import "package:flutter/material.dart";

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Temperature Converter"),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Developed by",
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Raleway',
                ),
              ),
              Text(
                "Malhar Vora",
                style: TextStyle(fontSize: 20, fontFamily: 'Lato'),
              ),
              SizedBox(height: 10),
              Text(
                "vbmade2000@gmail.com",
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Raleway',
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
