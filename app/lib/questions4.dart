import 'package:app/question2.dart';
import 'package:flutter/material.dart'; // TODO Implemen

class Question4Widget extends StatefulWidget {
  const Question4Widget({Key? key}) : super(key: key);

  @override
  _Question4WidgetState createState() => _Question4WidgetState();
}

class _Question4WidgetState extends State<Question4Widget> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(

            //พื้นหลัง
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("image/bg.jpg"),
              fit: BoxFit.cover,
            )),
            child: Stack(children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Color.fromARGB(150, 3, 4, 55),
                child: Column(children: [
                  Text("\n\nLet us know you better.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 30,
                      )),
                ]),
              ),
            ])));
  }
}
