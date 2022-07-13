import 'package:flutter/material.dart';
import 'frontPage.dart';

void main() {
  debugShowCheckedModeBanner:
  false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Frontpage());
  }
}
