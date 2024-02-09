import 'package:flutter/material.dart';
import 'package:tlp_rabta/constants/colors.dart';
import 'package:tlp_rabta/constants/sized_box_extensions.dart';

import '../../../utils/default_text.dart';

class AddEducationDetails extends StatelessWidget {
  const AddEducationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3.0),
          child: Column(
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        10.spaceV,
                        DefaultText(
                          text: "Educational Level",
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                          fontSize: 25,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColor.blackColor)),
                          child: DropdownButton(
                            items: const [
                              DropdownMenuItem(
                                value: 1,
                                child: Text(
                                  "Dropdown",
                                ),
                              ),
                              DropdownMenuItem(
                                value: 2,
                                child: Text("Dropdown"),
                              ),
                              DropdownMenuItem(
                                value: 3,
                                child: Text("Dropdown"),
                              ),
                            ],
                            onChanged: (value) {},
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: DefaultText(
                    text: 'Submit',
                    color: AppColor.whiteColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
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
