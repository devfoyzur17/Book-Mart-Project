  
// ignore_for_file: prefer_const_constructors

 
import 'package:book_mart_project/screen/home_page.dart';
import 'package:flutter/material.dart';
 
import 'screen/splash_screen/splash_screen.dart';
import 'widget/bottom_nav_bar.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:   Colors.green,

        fontFamily: 'Quicksand',
      ),
      home: SplashScreen()
    );
  }
}