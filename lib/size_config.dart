import 'package:flutter/material.dart';

class SizeConfigs {

  late MediaQueryData _mediaQueryData;
  static double screenWidth=0;
  static double screenHeight=0;
  late double defaultSize;
  late Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }

}


double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfigs.screenHeight;
  return (inputHeight / 812.0) * screenHeight;
}

double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfigs.screenWidth;
  return (inputWidth / 375.0) * screenWidth;
}