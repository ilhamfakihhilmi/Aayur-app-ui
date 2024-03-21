import 'package:flutter/material.dart';
import 'package:sayur_ui_app/core.dart';
import '../controller/introduce_controller.dart';

class IntroduceView extends StatefulWidget {
  const IntroduceView({Key? key}) : super(key: key);

  Widget build(context, IntroduceController controller) {
    controller.view = this;
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: 184,
                height: 184,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logoSplash.png")),
                ),
              ),
              const SizedBox(
                height: 60.0,
              ),
              Container(
                width: 400,
                height: 361,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logoIntro.png")),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginView()),
                  );
                },
                child: Container(
                  width: 168,
                  height: 43,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFF35724F),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 9, horizontal: 21),
                  child: const Text(
                    'Mulai Belanja    >',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<IntroduceView> createState() => IntroduceController();
}
