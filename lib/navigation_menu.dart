import 'package:flutter/material.dart';
import 'package:sayur_ui_app/module/home/view/home_view.dart';
import 'package:sayur_ui_app/module/order/view/order_view.dart';

void main() {
  runApp(NavBar());
}

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

  final List<Widget> _screens = [
    HomeView(),
    Screen2(),
    OrderView(),
    Screen4(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: _selectedIndex == 0
                        ? Color(0xff296859)
                        : Colors.transparent, // Background color of the icon
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Image.asset(
                    'assets/icons/homeIcon.png',
                    width: 24,
                    height: 24,
                    color: _selectedIndex == 0 ? Colors.white : Colors.grey,
                  ),
                ),
                label: 'Screen 1',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: _selectedIndex == 1
                        ? Color(0xff296859)
                        : Colors.transparent, // Background color of the icon
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Image.asset(
                    'assets/icons/donationIcon.png',
                    width: 24,
                    height: 24,
                    color: _selectedIndex == 1 ? Colors.white : Colors.grey,
                  ),
                ),
                label: 'Screen 2',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: _selectedIndex == 2
                        ? Color(0xff296859)
                        : Colors.transparent, // Background color of the icon
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Image.asset(
                    'assets/icons/moreIcon.png',
                    width: 24,
                    height: 24,
                    color: _selectedIndex == 2 ? Colors.white : Colors.grey,
                  ),
                ),
                label: 'Screen 3',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: _selectedIndex == 3
                        ? Color(0xff296859)
                        : Colors.transparent, // Background color of the icon
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Image.asset(
                    'assets/icons/userIcon.png',
                    width: 24,
                    height: 24,
                    color: _selectedIndex == 3 ? Colors.white : Colors.grey,
                  ),
                ),
                label: 'Screen 4',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Screen 1'),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Donation Screen',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Screen 3'),
    );
  }
}

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Screen',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
    );
  }
}
