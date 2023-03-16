import 'package:flutter/material.dart';
import 'package:healthy_food/home/home_page.dart';

void main(){
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healthy Foods',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
