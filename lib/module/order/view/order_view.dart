import 'package:flutter/material.dart';
import 'package:sayur_ui_app/core.dart';
import '../controller/order_controller.dart';

class OrderView extends StatefulWidget {
  const OrderView({Key? key}) : super(key: key);

  Widget build(context, OrderController controller) {
    controller.view = this;
    final List<Widget> tabViews = [
      Container(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/orderNull.png'),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Text(
                      "Belum ada yang di proses nih",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff006440),
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Yuk tambah produk yang kamu suka sekarang",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width * 0.5,
                      padding: const EdgeInsets.all(12.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Color(0xff296859), // Background color
                          elevation: 5, // Elevation
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15), // Button padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10), // Button border radius
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Belanja Sekarang",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/orderNull.png'),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Text(
                      "Belum ada yang di proses nih",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff006440),
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Yuk tambah produk yang kamu suka sekarang",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width * 0.5,
                      padding: const EdgeInsets.all(12.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Color(0xff296859), // Background color
                          elevation: 5, // Elevation
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15), // Button padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10), // Button border radius
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Belanja Sekarang",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ];

    return Scaffold(
      body: DefaultTabController(
        length: tabViews.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Pesanan'),
            bottom: TabBar(
                labelColor: Colors.black,
                indicatorColor: Color(0xff006440),
                tabs: [
                  Tab(
                    text: "Dalam Proses (0)",
                  ),
                  Tab(text: "Selesai (0)"),
                ]),
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: TabBarView(
            children: tabViews,
          ),
        ),
      ),
    );
  }

  @override
  State<OrderView> createState() => OrderController();
}
