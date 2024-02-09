import 'package:flutter/material.dart';
import 'package:tlp_rabta/constants/colors.dart';
import 'package:tlp_rabta/constants/sized_box_extensions.dart';
import 'package:tlp_rabta/utils/default_text.dart';
import 'package:tlp_rabta/utils/detault_text_form_fields.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                Card(
                  elevation: 4,
                  color: AppColor.whiteColor,
                  surfaceTintColor: AppColor.whiteColor,
                  child: Column(
                    children: [
                      12.spaceV,
                      const DefaultText(
                        text: "Mobile Number",
                        color: AppColor.blackColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      5.spaceV,
                      const DefaultTextFields(labelText: "Mobile Number"),
                      12.spaceV,
                      const DefaultText(
                        text: "Whatsapp Number",
                        color: AppColor.blackColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      5.spaceV,
                      const DefaultTextFields(labelText: "Whatsapp Number"),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          RadioListTile(
                            value: 0,
                            groupValue: 1,
                            title: const Text("Same as Mobile Number"),
                            onChanged: (value) {},
                          ),
                          RadioListTile(
                            value: 1,
                            groupValue: 1,
                            title: const Text("I don't have Whatsapp Number"),
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                      const DefaultText(
                        text: "Other Number",
                        color: AppColor.blackColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      5.spaceV,
                      const DefaultTextFields(labelText: ""),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          RadioListTile(
                            value: 0,
                            groupValue: 1,
                            title: const Text("Same as Mobile Number"),
                            onChanged: (value) {},
                          ),
                          RadioListTile(
                            value: 1,
                            groupValue: 1,
                            title: const Text("Same as Whatsapp Number"),
                            onChanged: (value) {},
                          ),
                          RadioListTile(
                            value: 2,
                            groupValue: 2,
                            title: const Text("I don't have other Mobile No"),
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Center(
                  child: DefaultText(
                    text: "Emails",
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
                Card(
                  elevation: 4,
                  color: AppColor.whiteColor,
                  surfaceTintColor: AppColor.whiteColor,
                  child: Column(
                    children: [
                      12.spaceV,
                      const DefaultText(
                        text: "Primary Email Address",
                        color: AppColor.blackColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      5.spaceV,
                      const DefaultTextFields(labelText: "Primary Email"),
                      12.spaceV,
                      const DefaultText(
                        text: "Other Email Address",
                        color: AppColor.blackColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      5.spaceV,
                      const DefaultTextFields(labelText: "Other Email"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Card(
                    elevation: 4,
                    color: AppColor.whiteColor,
                    surfaceTintColor: AppColor.whiteColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        const Text("Current Address"),
                        const Spacer(),
                        InkWell(onTap: () {}, child: const Icon(Icons.add)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Card(
                    elevation: 4,
                    color: AppColor.whiteColor,
                    surfaceTintColor: AppColor.whiteColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        const Text("Permanent Address"),
                        const Spacer(),
                        InkWell(onTap: () {}, child: const Icon(Icons.add)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Card(
                    elevation: 4,
                    color: AppColor.whiteColor,
                    surfaceTintColor: AppColor.whiteColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        const Text("Work Address"),
                        const Spacer(),
                        InkWell(onTap: () {}, child: const Icon(Icons.add)),
                      ],
                    ),
                  ),
                ),
                10.spaceV,
                InkWell(
                  onTap: () {},
                  child: const DefaultText(
                    text: "Click here to change address",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,
                  ),
                ),
                10.spaceV,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
