import 'package:flutter/material.dart';
import 'package:tlp_rabta/constants/sized_box_extensions.dart';
import 'package:tlp_rabta/utils/detault_text_form_fields.dart';

import '../../utils/default_text.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        leading: const CircleAvatar(
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            height: 35,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Center(
                child: DefaultText(
              text: 'Next',
              color: Colors.white,
            )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  DefaultText(text: "1. Basic Info"),
                  Spacer(),
                  Icon(Icons.edit),
                ],
              ),
              12.spaceV,
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black)),
                child: const Icon(
                  size: 60,
                  Icons.person,
                  color: Colors.black,
                ),
              ),
              const DefaultText(
                text: "CNIC",
                fontWeight: FontWeight.w500,
              ),
              const DefaultTextFields(labelText: ""),
              const DefaultText(
                text: "Full Name",
                fontWeight: FontWeight.w500,
              ),
              const DefaultTextFields(labelText: ""),
              const DefaultText(
                text: "Country",
                fontWeight: FontWeight.w500,
              ),
              const DefaultTextFields(labelText: ""),
              const DefaultText(
                text: "Membership Number",
                fontWeight: FontWeight.w500,
              ),
              const DefaultTextFields(labelText: ""),
              const DefaultText(
                text: "District",
                fontWeight: FontWeight.w500,
              ),
              const DefaultTextFields(labelText: ""),
              const DefaultText(
                text: "Tehsil/City/Town",
                fontWeight: FontWeight.w500,
              ),
              const DefaultTextFields(labelText: ""),
              const DefaultText(
                text: "UC/NC/VC/Ward No",
                fontWeight: FontWeight.w500,
              ),
              const DefaultTextFields(labelText: ""),
              const DefaultText(
                text: "Block Code",
                fontWeight: FontWeight.w500,
              ),
              const DefaultTextFields(labelText: ""),
              const DefaultText(
                text:
                    "How would you like to participate in upcoming elections  ",
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
