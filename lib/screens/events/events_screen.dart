import 'package:flutter/material.dart';
import 'package:flutter_travel_ex/components/app_bar.dart';
import 'package:flutter_travel_ex/components/custom_nav_bar.dart';
import 'package:flutter_travel_ex/screens/events/components/body.dart';

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'New Events'),
      body: Body(),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
