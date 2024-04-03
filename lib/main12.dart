import 'package:flutter/material.dart';

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({super.key});

  @override
  State<RadioButtonScreen> createState() => RadioButtonScreenState();
}

enum Genders { male, female, other }

class RadioButtonScreenState extends State<RadioButtonScreen> {
  bool isOn = false;
  Genders genderSelected = Genders.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Buttons'),
      ),
      body: Column(
        children: [
          Checkbox(
            value: isOn,
            // groupValue: isOn,
            onChanged: (value) {
              setState(() {});
            },
          ),
          Radio(
            value: 1,
            groupValue: 1,
            onChanged: (value) {},
          ),
          RadioListTile(
            value: Genders.male,
            groupValue: genderSelected,
            onChanged: (value) {
              setState(() {
                genderSelected = value!;
              });
            },
            title: const Text('Male'),
          ),
          RadioListTile(
            value: Genders.female,
            groupValue: genderSelected,
            onChanged: (value) {
              setState(() {
                genderSelected = value!;
              });
            },
            title: const Text('Female'),
          ),
          RadioListTile(
            value: Genders.other,
            groupValue: genderSelected,
            onChanged: (value) {
              setState(() {
                genderSelected = value!;
              });
            },
            title: const Text('Others'),
          ),
          Switch(
            value: isOn,
            thumbColor: MaterialStatePropertyAll(
              Colors.purple.shade800,
            ),
            thumbIcon: MaterialStatePropertyAll(
              isOn == true
                  ? const Icon(
                      Icons.check_circle_outline_rounded,
                      color: Colors.white,
                      size: 34,
                    )
                  : const Icon(
                      Icons.radio_button_unchecked_rounded,
                      size: 24,
                      color: Colors.white,
                    ),
            ),
            onChanged: (value) {
              setState(() {
                isOn = !isOn;
              });
            },
          ),
          Switch.adaptive(
            applyCupertinoTheme: true,
            value: isOn,
            onChanged: (value) {
              setState(() {
                isOn = !isOn;
              });
            },
          )
        ],
      ),
    );
  }
}
