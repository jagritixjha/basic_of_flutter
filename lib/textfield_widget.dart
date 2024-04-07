import 'package:flutter/material.dart';

class TextFieldWidgets extends StatefulWidget {
  const TextFieldWidgets({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TextFieldWidgetState();
  }
}

class _TextFieldWidgetState extends State<TextFieldWidgets> {
  List<Widget> textFeild = [
    const SkillField(),
    const SkillField(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dynamic TextField',
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo.shade100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Enter Your Skills.'),
            ...List.generate(textFeild.length, (index) {
              return Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  textFeild[index],
                  TextButton.icon(
                    onPressed: () {
                      setState(() {
                        textFeild.removeAt(index);
                      });
                    },
                    icon: const Icon(Icons.remove),
                    label: const Text('Remove'),
                  ),
                ],
              );
            }),
            const SizedBox(
              height: 20,
            ),
            TextButton.icon(
              onPressed: () {
                setState(() {
                  textFeild.add(const SkillField());
                });
              },
              icon: const Icon(Icons.add),
              label: const Text('Add skill'),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillField extends StatelessWidget {
  const SkillField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Enter your skill.',
          labelText: 'Skill',
          contentPadding: EdgeInsets.only(bottom: 1, top: 10),
        ),
      ),
    );
  }
}
