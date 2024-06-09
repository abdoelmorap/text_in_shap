import 'package:flutter/material.dart';
import 'package:text_in_shap/TextInShap/drawer_shapes.dart';
import 'package:text_in_shap/text_shape.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(widget.title),
      ),
      body: Center(
          child: TextShape(text: "I love You", type: DrawerShapes.Heart, textStyle: TextStyle(fontSize: 30,color: Colors.pink)),
      ),
    // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
