import 'package:flutter/material.dart';

class ChoiceChipDemo extends StatefulWidget {
  const ChoiceChipDemo({super.key});

  @override
  State<ChoiceChipDemo> createState() => _ChoiceChipDemoState();
}

class _ChoiceChipDemoState extends State<ChoiceChipDemo> {
  List<String> choices = ['Choice 1', 'Choice 2', 'Choice 3', 'Choice 4'];
  int? value;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Choice Chip')),
        body: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            children: [
              for (int index = 0; index < choices.length; index++)
                ChoiceChip(
                  label: Text(choices[index]),
                  selected: value == index,
                  onSelected: (selected) {
                    setState(() {
                      value = selected ? index : null;
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
