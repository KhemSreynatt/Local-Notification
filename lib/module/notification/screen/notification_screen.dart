import 'package:flutter/material.dart';

import '../custom/custom_notification.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: const Color(0xffF9A84D).withOpacity(0.1),
                ),
                child: Image.asset("assets/png/Path.png"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Notification",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomNitificatin(
              image: "assets/png/checkedpng.png",
              title: "Your order has been taken by the driver",
              sub: "Recently",
            ),
            const CustomNitificatin(
              image: "assets/png/money.png",
              title: "Topup for \$100 was successful",
              sub: "10.00 Am",
            ),
            const CustomNitificatin(
              image: "assets/png/x-button.png",
              title: "Your order has been canceled",
              sub: "10.00 Am",
            ),
          ],
        ),
      ),
    );
  }
}
