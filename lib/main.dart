import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverList.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(index.toString()),
              );
            },
            itemCount: 1000,
          ),
        ],
      )),
    );
  }
}
