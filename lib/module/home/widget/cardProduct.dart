// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  final String url;
  final String title1;
  final String title2;
  const CardProduct({
    Key? key,
    required this.url,
    required this.title1,
    required this.title2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 110.0,
          height: 165.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Container(
                height: 67.0,
                width: 88,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  image: DecorationImage(
                    image: AssetImage(url),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    title1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                SizedBox(
                  child: Text(
                    title2,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff006440)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
