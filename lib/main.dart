import 'package:flutter/material.dart';
import 'package:app001/srceen/Bottomnavbar_screen.dart';
import 'package:app001/srceen/home_screen.dart';
import 'constant/my_constant.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: MyConstant.succes,
        primaryColor: Colors.orange
      ),
      home: const BottomNavBar(),
    );
  }
}