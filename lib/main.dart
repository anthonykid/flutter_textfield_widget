import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(); //making the text editing controller with anonymous method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Field Practice"),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          margin: EdgeInsets.all(30),//making the margin 30 from all sides
          color: Colors.amber, //giving the body background color
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                //obscureText: true, //to make it look like pasword it changes the text to ****
                //maxLength: 5, //to make it max 5 character input
                onChanged: (value) {
                  setState(() {}); //we need to put the set state so we can update the text we are typing
                },
                controller: controller,
              ),
              Text(
                controller.text, //we put controller text so we are gonna double the text
                style: TextStyle(
                  fontSize: 30, //making the size bigger
                  color: Colors.blue, //making the cp;pr pf the text blue
                  decoration: TextDecoration
                      .underline, //making textdecoration as underline to make a line under the text
                  decorationColor:
                      Colors.red, //making the underline color turn to red
                  decorationThickness:
                      1, //making the thickness of the underline is 1
                  decorationStyle: TextDecorationStyle.wavy,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
