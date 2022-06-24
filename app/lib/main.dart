import 'package:app/question2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'preproject'),
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

                    //คอนเทนเนอร์ผู้หญิง
                    Column(children: [
                      Container(
                          margin: EdgeInsets.only(top: 35),
                          width: 250,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 70,
                                width: 100,
                                child: Image.asset("image/female.png"),
                              ),
                              Container(
                                child: Text("Famle",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 25,
                                    )),
                              )
                            ],
                          )),
                    ]),
                    //คอนเทนเนอร์ผู้ชาย
                    Column(children: [
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          width: 250,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 70,
                                width: 100,
                                child: Image.asset("image/male.png"),
                              ),
                              Container(
                                child: Text("male",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 25,
                                    )),
                              )
                            ],
                          )),
                    ]),

//-------------------------------Button-------------------------------------
                    Row(
                      children: [
                        Container(
                          child: Actions(
                            actions: {},
                            child: Container(
                                margin: EdgeInsets.only(top: 40, left: 70),
                                child: SizedBox(
                                  width: 100,
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Question2Widget()),
                                      );
                                    },
                                    child: Text("Skip"),
                                    style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(255, 255, 255, 255),
                                        onPrimary: Colors.black,
                                        textStyle: TextStyle(fontSize: 20)),
                                  ),
                                )),
                          ),

// Button ---> Skip
                        ),
                        /*Container(
                            margin: EdgeInsets.only(top: 40, left: 70),
                            child: SizedBox(
                              width: 100,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text("Skip"),
                                style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(255, 255, 255, 255),
                                    onPrimary: Colors.black,
                                    textStyle: TextStyle(fontSize: 20)),
                              ),
                            )),*/

                        //Button---> Next

                        Container(
                            margin: EdgeInsets.only(top: 40, left: 10),
                            child: SizedBox(
                              width: 100,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text("Next"),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.amber,
                                    textStyle: TextStyle(fontSize: 20)),
                              ),
                            )),
                      ],
                    )
//---------------------------------------------------------------------------
                  ]),
                ),
              )),
            ])));
  }
}
