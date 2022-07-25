import 'package:flutter/material.dart';
import 'package:learn/constants.dart';
import 'package:learn/size_config.dart';

import 'SplashContent.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

   late int currentPage = 0;
   List <Map<String, String>> splash_Data = [
      {"title": "Browse the Menu", "image": "assets/images/s1.png", "desc" : "This online order system and \napp is made to working every \nformat."},
      {"title": "Track Your Order", "image": "assets/images/s2.png", "desc" : "Automatic tracking system to \ntrack delivery courier \nshipments."},
      {"title": "Pickup Delivery", "image": "assets/images/s3.png", "desc" : "You can pickup your order \nfrom store with a valid photo \nidentity proof."}
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            Expanded(
            flex: 3,
            child: PageView.builder(
                itemCount: splash_Data.length,
                onPageChanged: (value){
                  setState(() {
                    currentPage=value;
                  });
                },
                itemBuilder: (context, index) =>
                     SplashContent(
                      title:splash_Data[index]["title"].toString() ,
                      image: splash_Data[index]["image"].toString(),
                      desc: splash_Data[index]["desc"].toString(),
                     )
               ),
            ),

           Expanded(
            flex: 2,
            child: Column(
              children: [
                Spacer(),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splash_Data.length,
                              (index) => buildDotsContainer(index)
                      ),
                    ),
                  ],
                ),
                Spacer(),
                FlatButton(
                  height: getProportionateScreenHeight(50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(getProportionateScreenHeight(15))
                  ),
                  color: fPrimaryColor,
                  onPressed:() {},
                  child: const Text("Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Spacer()

              ],
            ))
        ],
        )
    );
  }

  Container buildDotsContainer(int index ) {
     return Container(
        height: 6,
        margin: const EdgeInsets.only(right: 5),
        width: currentPage==index?20:6,
        decoration: BoxDecoration(
          color: currentPage==index?fPrimaryColor: Colors.black54,
          borderRadius: BorderRadius.circular(6),
        ),
     );
  }
}

