import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sayur_ui_app/core.dart';
import 'package:sayur_ui_app/module/login/widget/largeButton.dart';
import 'package:sayur_ui_app/module/login/widget/socialMediaButton.dart';
import 'package:sayur_ui_app/module/login/widget/textFieldOutlined.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logoSplash.png",
                width: 184.0,
                height: 184.0,
                fit: BoxFit.fill,
              ),
              Container(
                child: Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextFieldOutlined(
                hintText: "Masukan email kamu ya",
              ),
              TextFieldOutlined(
                hintText: "Password kamu",
              ),
              const SizedBox(
                height: 36.0,
              ),
              LargeButton(
                title: "Mulai berbelanja",
              ),
              const SizedBox(
                height: 36.0,
              ),
              Container(
                child: Text(
                  "Login dengan akun :",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 36.0,
              ),
              SocialMediaButton(
                titles: "Sign In With Facebook",
              ),
              const SizedBox(
                height: 29.0,
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFffffff),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/images/GoogleLogo.svg",
                          width: 20, height: 20, semanticsLabel: 'Label'),
                      Expanded(
                        child: Text(
                          "Sign In With Google",
                          style: TextStyle(color: Colors.black54),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
