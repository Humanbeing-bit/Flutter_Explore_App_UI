import 'package:flutter/material.dart';
import 'package:flutter_explore_app/constants/constants.dart';
import 'package:flutter_explore_app/model/placelistmodel.dart';
import 'package:flutter_explore_app/screens/homepage/widgets/place_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PlaceLists extends StatelessWidget {
  var placelists = Locations.generatedLocation();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => PlaceItem(placelists[index]),
          separatorBuilder: (_, index) => SizedBox(
                width: 20,
              ),
          itemCount: placelists.length,
          ),
    );
  }
}
