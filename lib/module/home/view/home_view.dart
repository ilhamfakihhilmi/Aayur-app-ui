import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sayur_ui_app/core.dart';
import 'package:sayur_ui_app/module/home/widget/bannerHome.dart';
import 'package:sayur_ui_app/module/home/widget/bannerProduct.dart';
import 'package:sayur_ui_app/module/home/widget/cardProductView.dart';
import 'package:sayur_ui_app/module/home/widget/categoryHome.dart';
import 'package:sayur_ui_app/module/home/widget/dashline.dart';
import 'package:sayur_ui_app/module/home/widget/diskonCard.dart';
import '../controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;
    return Stack(
      children: [
        Scaffold(
          extendBody: true,
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  // Banner ===================================
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 158.0,
                            decoration: const BoxDecoration(
                              color: Color(0xff006440),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Container(
                              height: 160.0,
                              width: 193.0,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/banHome.png')),
                              ),
                            ),
                          ),

                          // Search ====================================
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 180.0,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 5.0,
                                      horizontal: 12.0,
                                    ),
                                    width: 232.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(50.0),
                                      ),
                                      border: Border.all(
                                        width: 1.0,
                                        color: Colors.grey[400]!,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(
                                            left: 5,
                                          ),
                                        ),
                                        Expanded(
                                          child: TextFormField(
                                            textAlignVertical:
                                                TextAlignVertical.center,
                                            initialValue: null,
                                            decoration:
                                                const InputDecoration.collapsed(
                                              filled: true,
                                              fillColor: Colors.transparent,
                                              hintText: "Cari disini",
                                              hintStyle: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                              ),
                                              hoverColor: Colors.transparent,
                                            ),
                                            onFieldSubmitted: (value) {},
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            width: 34,
                                            height: 34,
                                            decoration: BoxDecoration(
                                                color: Colors.black12,
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            child: Icon(
                                              Icons.search,
                                              size: 20.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //Icons =======================

                                  IconButton(
                                    padding:
                                        EdgeInsets.only(left: 30, right: 15),
                                    icon: SvgPicture.asset(
                                        ("assets/icons/notifIcon.svg"),
                                        color: Colors.white,
                                        semanticsLabel: 'Label'),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: SvgPicture.asset(
                                        ("assets/icons/cartIcon.svg"),
                                        color: Colors.white,
                                        semanticsLabel: 'Label'),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 130, left: 25),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Dikirim ke ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                  children: const <TextSpan>[
                                    TextSpan(
                                        text: 'Rumah Vivi Roshian  >',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const BannerHome(),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Kategori",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CategoryRow(
                              imageCategory: ('assets/images/sayur.png'),
                              title: ("Sayur"),
                            ),
                            CategoryRow(
                              imageCategory: ('assets/images/buah.png'),
                              title: ("Buah"),
                            ),
                            CategoryRow(
                              imageCategory: ('assets/images/daging.png'),
                              title: ("Daging"),
                            ),
                            CategoryRow(
                              imageCategory: ('assets/images/lauk.png'),
                              title: ("Lauk"),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Navigasi ke layar baru saat Container ditekan
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CategoryView()),
                                );
                              },
                              child: CategoryRow(
                                imageCategory: ('assets/images/all.png'),
                                title: ("Lainnya"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 20, right: 20, bottom: 10),
                        child: Row(
                          children: [
                            SizedBox(
                              child: Text(
                                "Paling Laris",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Spacer(),
                            SizedBox(
                              child: Text(
                                "Lihat Semua",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff006400)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //banner product================================
                      GestureDetector(
                        onTap: () {
                          // Navigasi ke layar baru saat Container ditekan
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductpreviewView()),
                          );
                        },
                        child: BannerProduct(
                          url: ('assets/images/bannerPL.png'),
                          urlProduct1: ('assets/images/wortel.png'),
                          title1: "Wortel",
                          titleSub1: "Rp.5000",
                          urlProduct2: ('assets/images/tempe.png'),
                          title2: "Tempe",
                          titleSub2: "Rp.5000",
                          urlProduct3: ('assets/images/dagingAyam.png'),
                          title3: "Dading Ayam",
                          titleSub3: "Rp.15000",
                          urlProduct4: ('assets/images/tahu.png'),
                          title4: "Tahu",
                          titleSub4: "Rp.5000",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 20, right: 20, bottom: 10),
                        child: Row(
                          children: [
                            SizedBox(
                              child: Text(
                                "Produk Terbaru",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                      BannerProduct(
                        url: ('assets/images/bannerPT.png'),
                        urlProduct1: ('assets/images/bihun.png'),
                        title1: "Bihun",
                        titleSub1: "Rp.10.000",
                        urlProduct2: ('assets/images/tepung.png'),
                        title2: "Tepung",
                        titleSub2: "Rp.11000",
                        urlProduct3: ('assets/images/dagingAyam.png'),
                        title3: "Daging Ayam",
                        titleSub3: "Rp.15000",
                        urlProduct4: ('assets/images/tempe.png'),
                        title4: "Tempe",
                        titleSub4: "Rp.5000",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 20, right: 20, bottom: 10),
                        child: Row(
                          children: [
                            SizedBox(
                              child: Text(
                                "Produk Terbaru",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                      BannerProduct(
                        url: ('assets/images/bannerMA.png'),
                        urlProduct1: ('assets/images/nugget.png'),
                        title1: "Nugget Ayam",
                        titleSub1: "Rp.10.000",
                        urlProduct2: ('assets/images/ayamKecap.png'),
                        title2: "Ayam Kecap",
                        titleSub2: "Rp.15000",
                        urlProduct3: ('assets/images/kentangMustofa.png'),
                        title3: "Kentang Mustofa",
                        titleSub3: "Rp.10000",
                        urlProduct4: ('assets/images/sotoAyam.png'),
                        title4: "Soto Ayam",
                        titleSub4: "Rp.15000",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 20, right: 20, bottom: 10),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: Text(
                                    "Hemat Pakai Kupon",
                                    textAlign: TextAlign.left,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  child: Text(
                                    "Belanja Lebih Hemat Pakai Kupon",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            SizedBox(
                              child: Text(
                                "Lihat Semua",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff006400)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: DiskonCard(),
                      ),

                      const SizedBox(
                        height: 30.0,
                      ),
                      DashLine(),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CardProductView(
                                  url: ("assets/images/nugget2.png"),
                                  title: "Nugget ayam",
                                  title2: "Rp. 25.000",
                                ),
                                Spacer(),
                                CardProductView(
                                  url: ("assets/images/tepung2.png"),
                                  title: "Tepung",
                                  title2: "Rp. 15.000",
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 23.0,
                            ),
                            Row(
                              children: [
                                CardProductView(
                                  url: ("assets/images/wortel2.png"),
                                  title: "Wortel",
                                  title2: "Rp. 5.000",
                                ),
                                Spacer(),
                                CardProductView(
                                  url: ("assets/images/tempe2.png"),
                                  title: "Nugget ayam",
                                  title2: "Rp. 25.000",
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 23.0,
                            ),
                            Row(
                              children: [
                                CardProductView(
                                  url: ("assets/images/bihun2.png"),
                                  title: "Bihun",
                                  title2: "Rp. 10.000",
                                ),
                                Spacer(),
                                CardProductView(
                                  url: ("assets/images/dagingAyam2.png"),
                                  title: "Daging Ayam",
                                  title2: "Rp. 35.000",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 110.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Align(alignment: Alignment.bottomCenter, child: MyHome())
      ],
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
