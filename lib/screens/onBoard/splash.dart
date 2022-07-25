import 'package:flutter/material.dart';
import 'package:learn/screens/onBoard/body.dart';
import 'package:learn/size_config.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    SizeConfigs().init(context);

    return Scaffold(
      body: Body(),
    );
  }
}
