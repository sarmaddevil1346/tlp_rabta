import 'package:flutter/material.dart';
import 'package:tlp_rabta/utils/default_text.dart';
import 'package:tlp_rabta/utils/routes/routes_names.dart';

class EducationalDetails extends StatefulWidget {
  const EducationalDetails({super.key});

  @override
  State<EducationalDetails> createState() => _EducationalDetailsState();
}

class _EducationalDetailsState extends State<EducationalDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DefaultText(text: "3. Educational Info"),
            Spacer(),
            Center(
              child: DefaultText(
                text: "No Educational Records Found!\nPress + to add record",
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
                fontSize: 25,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, RoutesNames.addEducationScreen);
        },
        child: const Icon(
          Icons.add,
          size: 25,
        ),
      ),
    );
  }
}
