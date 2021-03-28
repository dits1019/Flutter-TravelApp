import 'package:flutter/material.dart';
import 'package:flutter_travel_ex/components/app_bar.dart';
import 'package:flutter_travel_ex/components/custom_nav_bar.dart';
import 'package:flutter_travel_ex/screens/components/body.dart';
import 'package:flutter_travel_ex/size_config.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true, //앱바 숨기기
      appBar: buildAppBar(isTransparent: true),
      body: Body(),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
