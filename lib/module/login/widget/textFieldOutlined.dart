import 'package:flutter/material.dart';

class textFieldOutlined extends StatelessWidget {
  final String hintText;
  const textFieldOutlined({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 14, right: 15, left: 15),
      child: TextFormField(
        initialValue: null,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
        ),
        onChanged: (value) {},
      ),
    );
  }
}
