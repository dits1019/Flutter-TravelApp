import 'package:flutter/material.dart';
import 'package:flutter_travel_ex/screens/components/search_field.dart';
import 'package:flutter_travel_ex/size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.center,
      children: <Widget>[
        Image.asset(
          "assets/images/home_bg.png",
          height: getProportionateScreenWidth(315),
          fit: BoxFit.cover,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: getProportionateScreenHeight(80), //크기가 다를 때도 사용 가능(비율)
            ),
            Text(
              "Travelers",
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(73),
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 0.5),
            ),
            Text(
              'Travel Community App',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        Positioned(
          bottom: getProportionateScreenWidth(-25),
          child: SearchField(),
        )
      ],
    );
  }
}
