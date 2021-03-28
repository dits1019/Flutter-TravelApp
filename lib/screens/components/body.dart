import 'package:flutter/material.dart';
import 'package:flutter_travel_ex/screens/components/HomeHeader.dart';
import 'package:flutter_travel_ex/screens/components/popular_places.dart';
import 'package:flutter_travel_ex/screens/components/top_travelers.dart';
import 'package:flutter_travel_ex/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        children: [
          HomeHeader(),
          VerticalSpacing(),
          PopularPlaces(),
          VerticalSpacing(),
          TopTravelers(),
          VerticalSpacing(),
        ],
      ),
    );
  }
}
