import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        context.go('/home');
      },
    );
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Image.asset(
                'assets/png/Logo.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 50),
            // LoadingAnimationWidget.fourRotatingDots(
            //   color: Colors.white,
            //   size: 50,
            // ),
          ],
        ),
      ),
    );
  }
}
