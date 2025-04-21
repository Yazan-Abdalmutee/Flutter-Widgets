import 'package:flutter/material.dart';

class InputChipDemo extends StatefulWidget {
  const InputChipDemo({super.key});

  @override
  State<InputChipDemo> createState() => _InputChipDemoState();
}

class _InputChipDemoState extends State<InputChipDemo> {
  List<String> choices = ['Choice 1', 'Choice 2', 'Choice 3', 'Choice 4'];
  int? value;

  void addNewChip() {
    setState(() {
      choices.add('New Chip ');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Input Chip')),
        body: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            children: [
              for (int index = 0; index < choices.length; index++)
                InputChip(
                  label: Text(choices[index]),
                  selected: value == index,
                  onPressed: () {
                    addNewChip();
                  },
                  onDeleted: () {
                    setState(() {
                      setState(() => choices.removeAt(index));
                    });
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
