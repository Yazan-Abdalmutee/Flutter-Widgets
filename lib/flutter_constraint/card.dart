import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  const CardDemo({super.key});

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
      appBar: AppBar(title: const Text('Card Constraint'), centerTitle: true),
      body: cardInLimitedSize(),
    );
  }

  Widget cardInLimitedSize() {
    return Container(
      width: 200,
      height: 200,
      color: Colors.green,
      child: Card(color: Colors.red),
    );
  }
}
