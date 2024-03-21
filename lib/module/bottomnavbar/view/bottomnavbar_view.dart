import 'package:flutter/material.dart';
import 'package:sayur_ui_app/core.dart';
import '../controller/bottomnavbar_controller.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 65,
      margin: EdgeInsets.only(
        right: 24,
        left: 24,
        bottom: 24,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(50),
            blurRadius: 3,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: navIcons.map((icon) {
          int index = navIcons.indexOf(icon);
          bool isSelected = selectedIndex == index;
          return Material(
            color: Colors.transparent,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      top: 10,
                      bottom: 0,
                      left: 20,
                      right: 20,
                    ),
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: isSelected
                              ? Color(0xff296859)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(5)),
                      child: ImageIcon(
                        AssetImage(imageList[index]),
                        color: isSelected
                            ? Colors.white
                            : Color.fromARGB(255, 198, 198, 198),
                      ),
                    ),
                  ),
                  // Text(
                  //   navTitle[index],
                  //   style: TextStyle(
                  //     color: isSelected ? Colors.blue : Colors.grey,
                  //     fontSize: 12,
                  //   ),
                  // ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

final List<String> imageList = [
  'assets/icons/homeIcon.png',
  'assets/icons/donationIcon.png',
  'assets/icons/moreIcon.png',
  'assets/icons/userIcon.png',
];

List<Image> navIcons = [
  Image.asset("assets/icons/homeIcon.png"),
  Image.asset("assets/icons/donationIcon.png"),
  Image.asset("assets/icons/donationIcon.png"),
  Image.asset("assets/icons/donationIcon.png"),
];

List<String> navTitle = [
  "Home",
  "Sedekah",
  "Profile",
];
int selectedIndex = 0;

class BottomnavbarView extends StatefulWidget {
  const BottomnavbarView({Key? key}) : super(key: key);

  Widget build(context, BottomnavbarController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottomnavbar"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [Text("okee"), Align(alignment: Alignment.bottomCenter, child: MyHome())
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<BottomnavbarView> createState() => BottomnavbarController();
}
