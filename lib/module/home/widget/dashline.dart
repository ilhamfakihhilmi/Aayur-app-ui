// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DashLine extends StatelessWidget {
  const DashLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, left: 20),
      child: Row(
        children: List.generate(
          1050 ~/ 10,
          (index) => Expanded(
            child: Container(
              color: index % 2 == 0 ? Colors.transparent : Colors.grey,
              height: 1,
            ),
          ),
        ),
      ),
    );
  }
}
