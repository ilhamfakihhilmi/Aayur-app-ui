import 'package:flutter/material.dart';
import 'package:sayur_ui_app/core.dart';
import '../controller/productpreview_controller.dart';



class ProductpreviewView extends StatefulWidget {
  const ProductpreviewView({Key? key}) : super(key: key);

  Widget build(context, ProductpreviewController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_checkout),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 260.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/images/wortel3.png"),
                    fit: BoxFit.none),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8.0,
                  ),
                ),
              ),
            ),
            //Dash line
            _dashline(),
            const SizedBox(
              height: 26.0,
            ),
            Container(
              height: 90.0,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8.0,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rp.5000",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Wortel (250 gram)",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            _dashline(),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 80.0,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Detail Produk",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "Berat",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        const SizedBox(
                          width: 40.0,
                        ),
                        Text(
                          "250 gram",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            _dashline(),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 130.0,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Deskripsi Produk",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Wortel memiliki tekstur seperti lobak, namun berwarna oren. Sayuran ini menyimpan vitamin A terbanyak. Umbi akar ink juga mengandung karbohidrat yang cukup besar. Olahan wortel di Sleman biasa dijadikan tumis, sup, capcay, atau jus wortel.",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width * 0.5,
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Background color
                      elevation: 4, // Elevation
                      padding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15), // Button padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Button border radius
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Beli Sekarang",
                      style: TextStyle(
                          color: Color(0xff296859),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width * 0.5,
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff296859), // Background color
                      elevation: 5, // Elevation
                      padding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15), // Button padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Button border radius
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "+ Keranjang",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }

  Container _dashline() {
    return Container(
      margin: EdgeInsets.only(right: 20, left: 20),
      child: Row(
        children: List.generate(
          1050 ~/ 10,
          (index) => Expanded(
            child: Container(
              color: index % 2 == 0 ? Colors.transparent : Colors.grey,
              height: 1,
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<ProductpreviewView> createState() => ProductpreviewController();
}
