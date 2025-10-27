import 'package:flutter/material.dart';
import 'package:flutter_application_1/dynamicpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 12, 227, 191)),
        useMaterial3: true,
      ),
      home: dynamicpage(),
    );
  }
}

