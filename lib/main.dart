import 'package:flutter/material.dart';
import 'package:flutter_sliver_app2/mysliver/my_first_sliver.dart';
import 'package:flutter_sliver_app2/mysliver/my_third_sliver.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyThirdSliver(),
    );
  }
}
