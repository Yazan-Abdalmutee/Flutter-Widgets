import 'package:flutter/material.dart';

class ListTileDemo extends StatefulWidget {
  const ListTileDemo({super.key});

  @override
  State<ListTileDemo> createState() => _ListTileDemoState();
}

class _ListTileDemoState extends State<ListTileDemo> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListTileSample(),
    );
  }
}

class ListTileSample extends StatefulWidget {

    const ListTileSample({super.key});

  @override
  State<ListTileSample> createState() => _ListTileSampleState();
}

class _ListTileSampleState extends State<ListTileSample> {
   bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListTile Sample'), centerTitle: true),
      body: ListTile(

        tileColor: isSelected? Colors.red:Colors.green,
        title: Text("This is Tile Demo"),
        subtitle: Text("This is subtitle"),
        splashColor: Colors.red,
        hoverColor: Colors.green,
        leading: FlutterLogo(size: 40),
        trailing: Icon(Icons.expand_circle_down_outlined, color: Colors.white),
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
      ),
    );
  }
}
