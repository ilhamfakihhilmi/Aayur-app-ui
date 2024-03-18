// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CardProductView extends StatelessWidget {
  final String url;
  final String title;
  final String title2;
  const CardProductView({
    Key? key,
    required this.url,
    required this.title,
    required this.title2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 151.0,
      height: 179.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(1, 1), // Shadow position
          ),
        ],
      ),
      child: Column(children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(url),
            ),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        SizedBox(
          child: Text(title,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
        ),
        SizedBox(
          child: Text(
            title2,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xff006440)),
          ),
        )
      ]),
    );
  }
}
