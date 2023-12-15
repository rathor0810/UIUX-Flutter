import 'package:flutter/material.dart';
import 'package:page1/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Color.fromARGB(255, 191, 213, 233)),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}
