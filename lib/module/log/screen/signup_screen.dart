import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset("assets/png/Logo.png"),
            const SizedBox(
              height: 20,
            ),
            Image.asset("assets/png/MasmasFood.png"),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Deliever Favorite Food",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 60,
            ),
            const Text(
              "Login To Your Account",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
