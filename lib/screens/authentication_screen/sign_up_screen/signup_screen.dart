import 'package:flutter/material.dart';
import 'package:tlp_rabta/utils/dropdown.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/background.jpg"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: MyHomePage(),
      ),
    );
  }
}
