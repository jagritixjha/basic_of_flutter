import 'package:flutter/material.dart';

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({super.key});

  @override
  State<RadioButtonScreen> createState() => RadioButtonScreenState();
}

enum Genders { male, female, other }

class RadioButtonScreenState extends State<RadioButtonScreen> {
  bool isOn = false;
  bool isDark = false;
  bool isLight = false;
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
              setState(() {
                isOn = value!;
              });
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
            value: isDark,
            thumbIcon: MaterialStatePropertyAll(
              isDark == true
                  ? const Icon(
                      Icons.check,
                      size: 20,
                    )
                  : const Icon(
                      Icons.close,
                      size: 20,
                    ),
            ),
            onChanged: (value) {
              setState(() {
                isDark = !isDark;
              });
            },
          ),
          Switch.adaptive(
            applyCupertinoTheme: true,
            value: isLight,
            onChanged: (value) {
              setState(() {
                isLight = !isLight;
              });
            },
          )
          
        ],
      ),
    );
  }
}
