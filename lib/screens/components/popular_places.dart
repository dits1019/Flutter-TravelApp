import 'package:flutter/material.dart';
import 'package:flutter_travel_ex/components/place_card.dart';
import 'package:flutter_travel_ex/components/section_title.dart';
import 'package:flutter_travel_ex/constants.dart';
import 'package:flutter_travel_ex/models/TravelSpot.dart';
import 'package:flutter_travel_ex/models/User.dart';
import 'package:flutter_travel_ex/size_config.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        Column(
          children: [
            SectionTitle(
              title: 'Right Now At Spark',
              press: () {},
            ),
            VerticalSpacing(of: 20),
            SingleChildScrollView(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    travelSpots.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(
                          left: getProportionateScreenWidth(20)),
                      child: PlaceCard(
                        travelSpot: travelSpots[index],
                        press: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(20),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

class Travelers extends StatelessWidget {
  const Travelers({
    Key? key,
    required this.users,
  }) : super(key: key);

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(30),
      child: Stack(
        children: <Widget>[
          ...List.generate(users.length, (index) {
            totalUser++;
            return Positioned(
              left: (22 * index).toDouble(),
              child: buildTravelerFace(index),
            );
          }),
          Positioned(
            left: (22 * totalUser).toDouble(),
            child: SizedBox(
              height: getProportionateScreenWidth(28),
              width: getProportionateScreenWidth(28),
              child: FlatButton(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: kPrimaryColor,
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  ClipOval buildTravelerFace(int index) {
    return ClipOval(
      child: Image.asset(
        users[index].image,
        height: getProportionateScreenWidth(28),
        width: getProportionateScreenWidth(28),
        fit: BoxFit.cover,
      ),
    );
  }
}
