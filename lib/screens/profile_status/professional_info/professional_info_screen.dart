import 'package:flutter/material.dart';
import 'package:tlp_rabta/constants/sized_box_extensions.dart';

import '../../../utils/default_text.dart';

class ProfessionalInfo extends StatefulWidget {
  const ProfessionalInfo({super.key});

  @override
  State<ProfessionalInfo> createState() => _ProfessionalInfoState();
}

class _ProfessionalInfoState extends State<ProfessionalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              20.spaceV,
              const DefaultText(text: "4. Professional Info"),
              SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Card(
                    child: Column(
                      children: [
                        20.spaceV,
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DefaultText(
                                text: "Expertise",
                              ),
                              Icon(Icons.add),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Center(
                          child: DefaultText(
                              text:
                                  "Nor Expertise Found\nPress + button to add Expertise"),
                        ),
                        const Spacer()
                      ],
                    ),
                  )),
              SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Card(
                    child: Column(
                      children: [
                        20.spaceV,
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DefaultText(
                                text: "Certification/Specialization",
                              ),
                              Icon(Icons.add),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Center(
                          child: DefaultText(
                              text:
                                  "Nor Certification Found\nPress + button to add Certification"),
                        ),
                        const Spacer()
                      ],
                    ),
                  )),
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Card(
                  child: Column(
                    children: [
                      20.spaceV,
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DefaultText(
                              text: "Profession/Occupation",
                            ),
                            Icon(Icons.add),
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Center(
                        child: DefaultText(
                            text:
                                "Nor Occupation/Profession Found\nPress + button to add Profession/Occupation"),
                      ),
                      const Spacer()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
