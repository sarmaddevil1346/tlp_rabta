import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tlp_rabta/utils/routes/routes_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
        context,
        RoutesNames.loginScreen,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/background.jpg"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const Spacer(),
            Image.asset(
                width: double.infinity, height: 250, "assets/images/5.png"),
            const Spacer(),
            Image.asset(
                height: 300, width: double.infinity, "assets/images/4.png"),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
