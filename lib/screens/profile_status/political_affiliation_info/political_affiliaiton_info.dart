import 'package:flutter/material.dart';
import 'package:tlp_rabta/utils/default_button.dart';
import 'package:tlp_rabta/utils/default_text.dart';

import '../../../utils/detault_text_form_fields.dart';

class PoliticalInfo extends StatelessWidget {
  const PoliticalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const DefaultText(text: "5. Political Affiliation Info "),
            const DefaultText(text: "Political Experience"),
            Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const DefaultText(
                    text: "Joined PTI on",
                    fontWeight: FontWeight.w500,
                  ),
                  const DefaultTextFields(labelText: "Joined PTI on"),
                  const DefaultText(
                    text: "Total Political Experience (Years)",
                    fontWeight: FontWeight.w500,
                  ),
                  const DefaultTextFields(
                      labelText: "Total Political Experience (Years)"),
                  const DefaultText(
                    text: "Experience Details",
                    fontWeight: FontWeight.w500,
                  ),
                  const DefaultTextFields(
                    labelText: "Experience Details",
                    lines: 4,
                  ),
                  DefaultButton(
                    text: "Submit",
                    textStyle: const TextStyle(),
                    onTap: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
