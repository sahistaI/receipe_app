import 'package:flutter/material.dart';
import 'package:navigation/fruit_toast.dart';
import 'package:navigation/page1.dart';
import 'package:navigation/page2.dart';
import 'package:navigation/page3_recipe.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Stawbery Pavolava',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
          useMaterial3: true,
        ),
        home: Page1()
    );
  }
}