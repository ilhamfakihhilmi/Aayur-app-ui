// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  final String title;
  final String url;
  const CardCategory({
    Key? key,
    required this.title,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68.0,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color(0xffE0F5E0),
        borderRadius: BorderRadius.all(
          Radius.circular(
            8.0,
          ),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 33),
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: SizedBox(
              width: 50,
              height: 30,
              child: ClipOval(
                child: Image.asset(
                  url,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 32),
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
