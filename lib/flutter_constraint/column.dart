import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestHomePage(),
    );
  }
}

class TestHomePage extends StatelessWidget {
  const TestHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Column Constraint'), centerTitle: true),
      body: rowOverFlow(),
    );
  }

  Widget columnDefault() {
    return Column(
      children: [
        Text("data", style: TextStyle(color: Colors.red, fontSize: 50)),
        Text("data2", style: TextStyle(color: Colors.red, fontSize: 50)),
      ],
    );
  }

  Widget columnEmptyDefault() {
    return Column(children: [Container(color: Colors.green)]);
  }

  Widget rowOverFlow() {
    return Row(
      children: [
        Container(width: 150, height: 150, color: Colors.green),
        Container(width: 150, height: 150, color: Colors.red),
        Container(width: 150, height: 150, color: Colors.blue),
      ],
    );
  }
}
