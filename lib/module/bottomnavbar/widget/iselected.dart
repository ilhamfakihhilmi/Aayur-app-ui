import 'package:flutter/material.dart';

class ColorSelectionExample extends StatefulWidget {
  @override
  _ColorSelectionExampleState createState() => _ColorSelectionExampleState();
}

class _ColorSelectionExampleState extends State<ColorSelectionExample> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Selection Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              // Toggle selected state
              isSelected = !isSelected;
            });
          },
          child: Container(
            width: 200,
            height: 200,
            color: isSelected ? Colors.blue : Colors.red,
            child: Center(
              child: Text(
                'Tap me to change color',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ColorSelectionExample(),
  ));
}
