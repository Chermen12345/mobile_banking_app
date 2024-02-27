import 'package:flutter/material.dart';
import 'package:mobile_banking_app/screens/home_screen.dart';
import 'package:mobile_banking_app/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bank',
      theme: mytheme,
      home: HomeScreen()
       
    );
  }
}



