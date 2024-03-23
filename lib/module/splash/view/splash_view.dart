import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sayur_ui_app/core.dart';
import '../controller/splash_controller.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  Widget build(context, SplashController controller) {
    controller.view = this;

    return AnimatedSplashScreen(
      splash: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/logoSplash.png")),
                  ),
                ),
              ),
              Container(
                child: Text(
                  "v1.0",
                  style: TextStyle(color: Color.fromARGB(237, 8, 67, 10)),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
      nextScreen: IntroduceView(),
      backgroundColor: Colors.white,
      splashIconSize: 1000,
    );
  }

  @override
  State<SplashView> createState() => SplashController();
}
