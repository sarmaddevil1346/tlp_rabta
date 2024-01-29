import 'package:flutter/material.dart';
import 'package:tlp_rabta/screens/home_screen.dart';
import 'package:tlp_rabta/utils/default_button.dart';
import 'package:tlp_rabta/utils/detault_text_form_fields.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
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
          body: SingleChildScrollView(
            child: Column(
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 500,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "CNIC / NICOP / POC",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "سی این آئی سی / این آئی سی او پی / پی او سی",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        DefaultTextFields(
                          labelText: "CNIC / NICOP / POC",
                          borderRadius: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(40)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        DefaultButton(
                          text: 'Submit',
                          boxDecoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
