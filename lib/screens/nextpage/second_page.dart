import 'package:flutter/material.dart';
import 'package:flutter_explore_app/model/placelistmodel.dart';
import 'package:flutter_explore_app/screens/nextpage/widgets/custom_appbar.dart';
import 'package:flutter_explore_app/screens/nextpage/widgets/loc_details.dart';

class SecondPage extends StatelessWidget {
  final Locations locations;
  SecondPage(this.locations);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SecCustomAppBar(locations),
            LocationDetails(locations),
          ],
        ),
      ),
    );
  }
}
