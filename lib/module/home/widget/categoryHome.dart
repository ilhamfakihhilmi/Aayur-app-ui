// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CategoryRow extends StatelessWidget {
  final String imageCategory;
  final String title;
  const CategoryRow({
    Key? key,
    required this.imageCategory,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    width: 53.0,
                    height: 67.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFF2F2F2),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 43.0,
                      height: 43.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage(imageCategory))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 48),
                    child: SizedBox(
                      width: 53.0,
                      child: Text(
                        title,
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
