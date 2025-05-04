import 'package:flutter/material.dart';

class TestDemo extends StatelessWidget {
  const TestDemo({super.key});

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
      appBar: AppBar(title: const Text('Widgets'), centerTitle: true),

      body: Expanded(
        child: Text(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          "This is a very long sentence that",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
