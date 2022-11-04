import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<ListTile> data = [];
  List<String> user = [''];
  List<ListTile> list() {
    for (int i = 0; i < user.length; i++) {
      data.add(
        ListTile(
          title: Text('${user[i]}'),
          leading: Icon(Icons.person),
        ),
      );
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: list(),
        ),
      ),
    );
  }
}
