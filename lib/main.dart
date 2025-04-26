import 'package:flutter/material.dart';

import 'demos/layout_widgets/chips/chip.dart';
import 'demos/layout_widgets/chips/choice_chip.dart';
import 'demos/layout_widgets/chips/filter_chip.dart';
import 'demos/layout_widgets/chips/input_chip.dart';
import 'demos/layout_widgets/filter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FilterPageExample();
  }
}
