import 'package:flutter/material.dart';

class FilterChipDemo extends StatefulWidget {
  const FilterChipDemo({super.key});

  @override
  State<FilterChipDemo> createState() => _FilterChipDemoState();
}

class _FilterChipDemoState extends State<FilterChipDemo> {
  List<String> choices = ['Choice 1', 'Choice 2', 'Choice 3', 'Choice 4'];
  int? value;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Filter Chip')),
        body: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            children: [
              for (int index = 0; index < choices.length; index++)
                FilterChip(
                  label: Text(choices[index]),
                  selected: value == index,

                  onDeleted: () {
                    setState(() {
                      setState(() => choices.removeAt(index));
                    });
                  },
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
