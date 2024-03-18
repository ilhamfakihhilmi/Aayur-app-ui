import 'package:flutter/material.dart';

class BannerHome extends StatelessWidget {
  const BannerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: 138,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 342,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/banner1.png'))),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Container(
              width: 342,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/banner2.png'))),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Container(
              width: 342,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/banner1.png'))),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Container(
              width: 342,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/banner2.png'))),
            ),
          ],
        ),
      ),
    );
  }
}
