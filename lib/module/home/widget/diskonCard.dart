// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DiskonCard extends StatelessWidget {
  const DiskonCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 90.0,
          child: ListView.builder(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) => Card(
              child: Center(
                child: Container(
                  width: 185.0,
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Spesial Sehat",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 12),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8.0)),
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/jerukSH.png"),
                                  ),
                                ),
                              ),
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "SEHAT500",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Dapatkan Diskon 5%",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );

    //  Stack(
    //   children: [
    //     Padding(
    //       padding: const EdgeInsets.only(left: 20),
    //       child: ListView(
    //         scrollDirection: Axis.horizontal,
    //         children: <Widget>[
    //           Container(
    //             width: 191.0,
    //             height: 83,
    //             decoration: BoxDecoration(
    //               color: Colors.white,
    //               borderRadius: BorderRadius.all(Radius.circular(8.0)),
    //               boxShadow: [
    //                 BoxShadow(
    //                   color: Colors.black26,
    //                   blurRadius: 4,
    //                   offset: Offset(1, 1), // Shadow position
    //                 ),
    //               ],
    //             ),
    //             child: Padding(
    //               padding: const EdgeInsets.all(8.0),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Text(
    //                     "Spesial Sehat",
    //                     style: TextStyle(
    //                         fontWeight: FontWeight.w500, fontSize: 16),
    //                   ),
    //                   Row(
    //                     children: [
    //                       Padding(
    //                         padding: const EdgeInsets.only(right: 5),
    //                         child: Container(
    //                           width: 36.0,
    //                           height: 36.0,
    //                           decoration: BoxDecoration(
    //                             color: Colors.white,
    //                             borderRadius: const BorderRadius.all(
    //                                 Radius.circular(8.0)),
    //                             image: DecorationImage(
    //                               image:
    //                                   AssetImage("assets/images/jerukSH.png"),
    //                             ),
    //                           ),
    //                         ),
    //                       ),
    //                       Column(
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         children: [
    //                           Text(
    //                             "SEHATT500",
    //                             style: TextStyle(
    //                                 fontWeight: FontWeight.w800,
    //                                 fontSize: 16),
    //                           ),
    //                           Text("Dapatkan Diskon 5%"),
    //                         ],
    //                       ),
    //                     ],
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //           const SizedBox(
    //             width: 10.0,
    //           ),
    //           Container(
    //             width: 191.0,
    //             height: 83.0,
    //             decoration: BoxDecoration(
    //               color: Colors.white,
    //               borderRadius: BorderRadius.all(Radius.circular(8.0)),
    //               image: DecorationImage(
    //                 image: AssetImage("assets/images/buah.png"),
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // ),
  }
}
