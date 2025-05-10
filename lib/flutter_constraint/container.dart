import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

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
      appBar: AppBar(
        title: const Text('Container Constraint'),
        centerTitle: true,
      ),
      body: containerConstraintDefault(),
    );
  }

  Widget containerConstraintDefault() {
    return SizedBox(
      height: 500,
      width: 500,
      child: Container(color: Colors.green),
    );
  }

  Widget containerInColumn() {
    return Column(children: [Container(color: Colors.green)]);
  }

  Widget containerInRow() {
    return Row(
      children: [
        Expanded(
          child: Container(height: 10, width: 2000, color: Colors.green),
        ),
      ],
    );
  }

  Widget containerInLimitedSize() {
    return Container(
      width: 200,
      height: 200,
      color: Colors.green,
      child: Container(width: 100, height: 100, color: Colors.red),
    );
  }
}
