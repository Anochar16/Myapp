import 'package:flutter/material.dart'; // TODO Implemen

class Question4Widget extends StatefulWidget {
  const Question4Widget({Key? key}) : super(key: key);

  @override
  _Question4WidgetState createState() => _Question4WidgetState();
}

class _Question4WidgetState extends State<Question4Widget> {
  get child => null;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Traning"),
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("data"),
      ),
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
              backgroundColor: Color.fromARGB(255, 196, 195, 195))
        ],
      ),
    );
  }
}
