import 'package:flutter/material.dart';
import 'package:learn/constants.dart';
import 'package:learn/screens/onBoard/splash.dart';

// author: Mohammad Chand Alam
//         Aligarh Muslim University

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: fTextColor),
          bodyText2: TextStyle(color: fTextColor)
        ),
        primarySwatch: Colors.blue
      ),
      home: SplashScreen(),
    );
  }
}
