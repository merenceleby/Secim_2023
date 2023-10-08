import 'package:flutter/material.dart';

import 'kod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secim Takip',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home: secim(),
      debugShowCheckedModeBanner: false,
    );
  }
}
