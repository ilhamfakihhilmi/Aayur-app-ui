import 'package:flutter/material.dart';
import 'package:sayur_ui_app/core.dart';
import '../controller/order_controller.dart';

Widget build(context, OrderController controller) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Pesanan'),
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => Navigator.of(context).pop(),
      ),
    ),
    body: DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints.expand(height: 50),
            child: TabBar(
                labelColor: Colors.black,
                indicatorColor: Color(0xff006440),
                tabs: [
                  Tab(
                    text: "Dalam Proses (0)",
                  ),
                  Tab(text: "Selesai (0)"),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 5, // Blur radius
                      offset: Offset(0, 1), // Offset
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: TabBarView(children: [
                Container(
                  child: Center(
                    child: Text(
                      "Pesanan Wortel sedang diantar",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  child: Text("Articles Body"),
                ),
              ]),
            ),
          ),
        ],
      ),
    ),
  );
}
