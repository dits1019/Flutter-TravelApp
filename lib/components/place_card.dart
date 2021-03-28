import 'package:flutter/material.dart';
import 'package:flutter_travel_ex/constants.dart';
import 'package:flutter_travel_ex/models/TravelSpot.dart';
import 'package:flutter_travel_ex/screens/components/popular_places.dart';
import 'package:flutter_travel_ex/size_config.dart';
import 'package:intl/intl.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    Key key,
    @required this.travelSpot,
    @required this.press,
    this.isFullCard = false,
  }) : super(key: key);

  final TravelSpot travelSpot;
  final GestureTapCallback press;
  final bool isFullCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(isFullCard ? 158 : 137),
      child: Column(
        children: <Widget>[
          AspectRatio(
            //가로세로비로 위젯 생성
            aspectRatio: isFullCard ? 1.09 : 1.29, //가로세로 비율
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(travelSpot.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(isFullCard ? 158 : 137),
            padding: EdgeInsets.all(
              getProportionateScreenWidth(kDefaultPadding),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Colors.white,
              boxShadow: [kDefaultShadow],
            ),
            child: Column(
              children: <Widget>[
                Text(
                  travelSpot.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isFullCard ? 17 : 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (isFullCard)
                  Text(
                    travelSpot.date.day.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                Text(DateFormat.MMM().format(travelSpot.date).toString() +
                    " " +
                    travelSpot.date.year.toString()),
                VerticalSpacing(of: 10),
                Travelers(users: travelSpot.users),
              ],
            ),
          )
        ],
      ),
    );
  }
}
