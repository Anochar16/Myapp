import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart'; // TODO Implemen

class Question4Widget extends StatefulWidget {
  const Question4Widget({Key? key}) : super(key: key);

  @override
  _Question4WidgetState createState() => _Question4WidgetState();
}

class _Question4WidgetState extends State<Question4Widget> {
  get child => null;
  int currentIndex = 0;
  final screens = [
    Center(
      child: Text("test"),
    ),
    Center(
      child: Text("test2"),
    ),
    Center(
      child: Text("test3"),
    ),
    // EX Question4Widget();
  ];
  List<int> data = [];
  int _focusedIndex = 0;
  void initState() {
    super.initState();

    for (int i = 0; i < 30; i++) {
      data.add(Random().nextInt(100) + 1);
    }
  }

  void _onItemFocus(int index) {
    setState(() {
      _focusedIndex = index;
    });
  }

  Widget _buildItemDetail() {
    if (data.length > _focusedIndex)
      return Container(
        height: 150,
        child: Text("index $_focusedIndex: ${data[_focusedIndex]}"),
      );

    return Container(
      height: 150,
      child: Text("No Data"),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    //horizontal
    return Container(
      width: 35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            height: data[index].toDouble() * 2,
            width: 25,
            color: Colors.lightBlueAccent,
            child: Text("i:$index\n${data[index]}"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Traning"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text(
                'Setting',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Backup & Restore'),
              subtitle: Text("Sign in and synchronize your data"),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.coffee),
              title: Text('Countdown Time'),
              onTap: () => _AlertReTime(context),
            ),
            ListTile(
              leading: Icon(Icons.restore),
              title: Text('Restart progress'),
              onTap: () => _AlertRestore(context),
            ),
          ],
        ),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(
          () => currentIndex = index,
        ),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.sports),
              label: "Training",
              backgroundColor: Color.fromARGB(255, 196, 195, 195)),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books_outlined),
              label: "History",
              backgroundColor: Color.fromARGB(255, 196, 195, 195)),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Contact",
              backgroundColor: Color.fromARGB(255, 196, 195, 195))
        ],
      ),
    );
  }

  _AlertRestore(context) {
    Alert(
        context: context,
        title: "Restart progress",
        type: AlertType.warning,
        buttons: [
          DialogButton(
              child: Text("OK"), onPressed: () => Navigator.pop(context)),
          DialogButton(
              child: Text("Cancel"), onPressed: () => Navigator.pop(context))
        ]).show();
  }

  _AlertReTime(context) {
    Alert(
        context: context,
        title: "Set Duration (5~180 secs)",
        content: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Countdown'),
              keyboardType: TextInputType.number,
            )
          ],
        ),
        buttons: [
          DialogButton(
              child: Text("OK"), onPressed: () => Navigator.pop(context)),
          DialogButton(
              child: Text("Cancel"), onPressed: () => Navigator.pop(context))
        ]).show();
  }
}
