import 'package:flutter/material.dart';
import 'package:tlp_rabta/constants/sized_box_extensions.dart';

import '../../../constants/colors.dart';
import '../../../utils/default_text.dart';
import '../../../utils/detault_text_form_fields.dart';

class ChangeAddress extends StatelessWidget {
  const ChangeAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      body: SafeArea(
        child: SizedBox(
          height: 450,
          width: double.infinity,
          child: Card(
            surfaceTintColor: AppColor.whiteColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.spaceV,
                  const DefaultText(
                    text: "Mobile Number",
                    color: AppColor.blackColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                  5.spaceV,
                  const DefaultTextFields(
                    labelText: "Street Address",
                  ),
                  12.spaceV,
                  const DefaultText(
                    text: "Account Address",
                    color: AppColor.blackColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      RadioListTile(
                        value: 0,
                        groupValue: 0,
                        title: const Text("Current"),
                        onChanged: (value) {},
                      ),
                      RadioListTile(
                        value: 1,
                        groupValue: 1,
                        title: const Text("Permanent"),
                        onChanged: (value) {},
                      ),
                      RadioListTile(
                        value: 2,
                        groupValue: 2,
                        title: const Text("Work"),
                        onChanged: (value) {},
                      ),
                      12.spaceV,
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DefaultText(
                            text: "Attachments",
                            color: AppColor.blackColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          Icon(Icons.attach_file),
                        ],
                      ),
                      10.spaceV,
                      Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: DefaultText(
                            text: 'Submit',
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: AppColor.whiteColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
