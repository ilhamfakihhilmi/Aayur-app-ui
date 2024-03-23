import 'package:flutter/material.dart';

import 'package:sayur_ui_app/core.dart';

void main() {
  runApp(TestBotNav());
}

class TestBotNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                _onItemTapped(0);
              },
              child: GestureDetector(
                onTap: () {
                  // Navigasi ke layar baru saat Container ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeView()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Icon(
                    Icons.home,
                    color: _selectedIndex == 0 ? Colors.green : Colors.grey,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _onItemTapped(1);
              },
              child: GestureDetector(
                onTap: () {
                  // Navigasi ke layar baru saat Container ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrderView()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Icon(
                    Icons.search,
                    color: _selectedIndex == 1 ? Colors.green : Colors.grey,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _onItemTapped(2);
              },
              child: GestureDetector(
                onTap: () {
                  // Navigasi ke layar baru saat Container ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrderView()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Icon(
                    Icons.notifications,
                    color: _selectedIndex == 2 ? Colors.green : Colors.grey,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _onItemTapped(3);
              },
              child: Container(
                padding: EdgeInsets.all(16),
                child: Icon(
                  Icons.account_circle,
                  color: _selectedIndex == 3 ? Colors.green : Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
