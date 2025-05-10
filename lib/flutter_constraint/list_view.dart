import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

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
        title: const Text('ListView Constraint'),
        centerTitle: true,
      ),
      body: listViewInUnBounded(),
    );
  }

  Widget listViewDefault() {
    return SizedBox(
      height: 150,
      width: 200,
      child: ListView(
        children: [
          Container(color: Colors.red, height: 40),
          Container(color: Colors.green, height: 40),
          Container(color: Colors.yellow, height: 40),
          Container(color: Colors.purple, height: 40),
          Container(color: Colors.black, height: 40),
        ],
      ),
    );
  }

  Widget listViewInUnBounded() {
    return Column(
      children: [
        ListView(
          children: [
            Container(color: Colors.red, height: 40),
            Container(color: Colors.green, height: 40),
            Container(color: Colors.yellow, height: 40),
            Container(color: Colors.purple, height: 40),
            Container(color: Colors.black, height: 40),
          ],
        ),
      ],
    );
  }
}
