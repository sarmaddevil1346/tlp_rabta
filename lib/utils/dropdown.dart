import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? dropdownValue;
  late FocusNode textFormFieldFocusNode;

  @override
  void initState() {
    super.initState();
    textFormFieldFocusNode = FocusNode();
  }

  @override
  void dispose() {
    textFormFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 100,
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: DropdownButton(
              value: dropdownValue,
              items: const [
                DropdownMenuItem(
                  value: null,
                  child: Text("Register As"),
                ),
                DropdownMenuItem(
                  value: 'two',
                  child: Text("Two"),
                ),
                DropdownMenuItem(
                  value: 'three',
                  child: Text("Three"),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  dropdownValue = value as String?;
                  if (dropdownValue == null) {
                    // If 'Register As' is selected, clear the value and hide the TextFormField
                    textFormFieldFocusNode.unfocus();
                  }
                });
              },
            ),
          ),
          const SizedBox(height: 20),
          if (dropdownValue != null && dropdownValue != 'Register As')
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Enter something',
              ),
            ),
        ],
      ),
    );
  }
}
