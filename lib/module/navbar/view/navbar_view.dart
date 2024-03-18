import 'package:flutter/material.dart';
import 'package:sayur_ui_app/core.dart';
import 'package:sayur_ui_app/module/navbar/widget/main_screen.dart';
import '../controller/navbar_controller.dart';

class NavbarView extends StatefulWidget {
  const NavbarView({Key? key}) : super(key: key);

  Widget build(context, NavbarController controller) {
    controller.view = this;
    return MainScreen();
  }

  @override
  State<NavbarView> createState() => NavbarController();
}
