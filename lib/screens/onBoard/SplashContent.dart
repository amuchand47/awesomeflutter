import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class SplashContent extends StatelessWidget {

  final String title, image, desc;

  const SplashContent({Key? key, required this.title, required this.image, required this.desc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(image, height: getProportionateScreenHeight(265),width: getProportionateScreenWidth(265)),
        const Spacer(),
        Text(title, style: TextStyle(
            color: fPrimaryColor,
            fontSize: getProportionateScreenHeight(28),
            fontWeight: FontWeight.bold
        ),),
        SizedBox(height: getProportionateScreenHeight(10),),
        Text(desc, style: TextStyle(
          fontSize: getProportionateScreenHeight(15),
        ),
          textAlign: TextAlign.center,
        ),
        const Spacer()

      ],
    );
  }
}
