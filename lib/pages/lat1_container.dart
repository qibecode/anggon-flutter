import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ini title app",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan Flutter 01"),
          centerTitle: true,
          backgroundColor: Colors.amber[300],
          shadowColor: Colors.black,
          elevation: 5,
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 100,
            color: Colors.red,
            child: Center(
              child: Text(
                "Teks di dalam Container",
                style: TextStyle(color: Colors.yellow[300]),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("di klik");
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
