import 'package:flutter/material.dart';

class ChipsDemo extends StatefulWidget {
  const ChipsDemo({super.key});

  @override
  State<ChipsDemo> createState() => _ChipsDemoState();
}

class _ChipsDemoState extends State<ChipsDemo> {
  List<String> choices = ['Choice 1', 'Choice 2', 'Choice 3', 'Choice 4'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Chip Demo')),
        body: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            children: [
              for (int index = 0; index < choices.length; index++)
                Chip(
                  label: Text(choices[index]),
                  onDeleted: () {
                    setState(() => choices.removeAt(index));
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
