import 'package:flutter/material.dart';
import 'package:who_am_i/screens/home/home.dart';
import 'package:who_am_i/screens/movies/movies.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Movies(),
    );
  }
}

