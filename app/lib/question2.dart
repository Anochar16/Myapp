import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Question2Widget extends StatefulWidget {
  const Question2Widget({Key? key}) : super(key: key);

  @override
  _Question2WidgetState createState() => _Question2WidgetState();
}

class _Question2WidgetState extends State<Question2Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
              Container(
                  child: Center(
                      child: Container(
                          width: 350,
                          height: 550,
                          margin: EdgeInsets.only(top: 160, left: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromARGB(191, 240, 240, 240),
                          ),
                          child: Column(children: [
                            Text("\n\nLet us know you better.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 25,
                                )),
                          ]))))
            ])));
  }
}
