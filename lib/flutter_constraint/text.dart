import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({super.key});

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
      appBar: AppBar(title: const Text('Text Constraint'), centerTitle: true),
      body: textConstraintDefault(),
    );
  }

  Widget textConstraintDefault() {
    return Text(
      "This is a very long sentence that contain ",
      style: TextStyle(fontSize: 30),
    );
  }

  Widget textConstraintInContainer() {
    return Container(
      color: Colors.red,
      height: 40,
      child: Text(
        "This is a very long sentence that",
        style: TextStyle(fontSize: 30),
      ),
    );
  }

  Widget textInRow() {
    return Row(
      children: [
        Text(
          "This is a very long sentence that",
          style: TextStyle(fontSize: 30),
          //maxLines: 1,
          //overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
