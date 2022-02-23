import 'package:flutter/material.dart';
import 'package:flutter_explore_app/constants/constants.dart';
import 'package:flutter_explore_app/model/placelistmodel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ExpandingDots extends StatelessWidget {
  var placelists = Locations.generatedLocation();

    @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Center(
        child: AnimatedSmoothIndicator(
          activeIndex: 2,
          count: placelists.length,
          effect: ExpandingDotsEffect(
            activeDotColor: ConstColors.green,
            dotColor: ConstColors.green,
            dotHeight: 7,
            dotWidth: 7,
            expansionFactor: 3,
          ),
        ),
      ),
    );
  }
}
