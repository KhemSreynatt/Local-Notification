import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:masmas_food_delivery/module/home/widget/custom_botton.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 90,
          ),
          SvgPicture.asset("assets/svg/Illustartion.svg"),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Find your  Comfort\n Food here",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 60, right: 60, top: 20),
            child: Text(
              "Here You Can find a chef or dish for every taste and color. Enjoy!",
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
                context.push('/onbordingone');
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const OnbordingScreen1()));
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
