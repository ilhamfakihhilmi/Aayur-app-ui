// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:sayur_ui_app/module/home/widget/cardProduct.dart';

class BannerProduct extends StatelessWidget {
  final String url;
  final String urlProduct1;
  final String urlProduct2;
  final String urlProduct3;
  final String urlProduct4;
  final String title1;
  final String titleSub1;
  final String title2;
  final String titleSub2;
  final String title3;
  final String titleSub3;
  final String title4;
  final String titleSub4;
  const BannerProduct({
    Key? key,
    required this.url,
    required this.urlProduct1,
    required this.urlProduct2,
    required this.urlProduct3,
    required this.urlProduct4,
    required this.title1,
    required this.titleSub1,
    required this.title2,
    required this.titleSub2,
    required this.title3,
    required this.titleSub3,
    required this.title4,
    required this.titleSub4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 203.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(url),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 122, right: 20, top: 19),
            child: Container(
              height: 165,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CardProduct(
                    url: (urlProduct1),
                    title1: title1,
                    title2: titleSub1,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  CardProduct(
                    url: (urlProduct2),
                    title1: title2,
                    title2: titleSub2,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  CardProduct(
                    url: (urlProduct3),
                    title1: title3,
                    title2: titleSub3,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  CardProduct(
                    url: (urlProduct4),
                    title1: title4,
                    title2: titleSub4,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
