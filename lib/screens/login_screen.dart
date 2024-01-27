import 'package:flutter/material.dart';
import 'package:tlp_rabta/utils/default_button.dart';
import 'package:tlp_rabta/utils/detault_text_form_fields.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  void initState() {
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
              const SizedBox(
                height: 60,
              ),
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/logo.png"),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Sign In",
                      style: TextStyle(),
                    ),
                    DefaultTextFields(
                      labelText: "CNIC / NICOP / POC",
                      borderRadius: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    DefaultTextFields(
                      labelText: "Password",
                      borderRadius: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20)),
                      icon: const Icon(Icons.visibility),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: const Text(
                        "Forgot Passwords",
                      ),
                    ),
                    DefaultButton(
                      text: 'LOGIN',
                      boxDecoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                      ),
                    ),
                    DefaultButton(
                      text: 'TLP Candidate Symbol Search',
                      boxDecoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                      ),
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        Text(
                          "Register Yours",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
