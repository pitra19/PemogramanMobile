import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Button'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.amber,
            ),
            onPressed: () {},
            child: Text("Elevated Button"),
          ),
          MaterialButton(
            color: Colors.lime,
            onPressed: () {},
            child: Text("Material Button"),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightGreenAccent,
            ),
            onPressed: () {},
            child: Text("Text Button"),
          ),
        ],
      ),
    );
  }
}