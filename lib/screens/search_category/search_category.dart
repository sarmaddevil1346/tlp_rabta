import 'package:flutter/material.dart';
import 'package:tlp_rabta/utils/default_button.dart';

import '../../utils/detault_text_form_fields.dart';

class SearchHalqaScreen extends StatefulWidget {
  const SearchHalqaScreen({super.key});

  @override
  State<SearchHalqaScreen> createState() => _SearchHalqaScreenState();
}

class _SearchHalqaScreenState extends State<SearchHalqaScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/background.jpg"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white54,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Text(
                      "Tehreek-e-Labbaik Pakistan",
                      style: TextStyle(color: Colors.white),
                    ),
                    const Text(
                      "تحریک لبیک پاکستان",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: double.infinity,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          )),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 300,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  const Text(
                                    "Constituency / Halqa / City ",
                                    style: TextStyle(color: Colors.white54),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  DefaultTextFields(
                                    labelText:
                                        'Type e.g: NA-46 ,ICT , NA-18 Haripur',
                                    borderRadius: const OutlineInputBorder(),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  DefaultButton(
                                    boxDecoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    text: "Search",
                                    textStyle: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                    onTap: () {},
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
