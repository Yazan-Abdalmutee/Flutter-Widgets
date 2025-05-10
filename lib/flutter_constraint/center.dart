import 'package:flutter/material.dart';

class CenterDemo extends StatelessWidget {
  const CenterDemo({super.key});

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
      appBar: AppBar(title: const Text('Center Constraint'), centerTitle: true),
      body: centerExample(),
    );
  }

  Widget centerDefulat() {
    return Center(child: Container(color: Colors.red));
  }

  Widget centerExample() {
    return SizedBox(
      height: 100,
      width: 100,
      child: Center(child: Container(height: 100, color: Colors.red)),
    );
  }
}
