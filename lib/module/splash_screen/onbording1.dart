import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:masmas_food_delivery/module/home/widget/custom_botton.dart';

class OnbordingScreen1 extends StatelessWidget {
  const OnbordingScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset(
            "assets/png/Illustration.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Food Ninja is Where Your \nComfort Food Lives",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 60, right: 60, top: 20),
            child: Text(
              "Enjoy a fast and smooth food delivery at your doorstep",
              style: TextStyle(
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 170,
            height: 57,
            child: CustomButton(
              isDisable: false,
              isOutline: false,
              onPressed: () {
                context.go('/homepage');
              },
              color: const Color(0xff53E88B),
              title: "Next",
            ),
          ),
        ],
      ),
    );
  }
}
