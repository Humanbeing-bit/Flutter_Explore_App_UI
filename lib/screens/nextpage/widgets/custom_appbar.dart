import 'package:flutter/material.dart';
import 'package:flutter_explore_app/constants/constants.dart';
import 'package:flutter_explore_app/model/placelistmodel.dart';

class SecCustomAppBar extends StatelessWidget {
  final Locations locations;

  SecCustomAppBar(this.locations);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  locations.image,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 15,
            child: GestureDetector(
              onTap: () {
              Navigator.of(context).pop();
            },
              child: Container(
                height: 40,
                width: 40,
                margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: ConstColors.green,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            right: 15,
            child: Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: Icon(
                Icons.favorite_outlined,
                color: Colors.red,
              ),
            ),
          ),
          Positioned(
            bottom: -1,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
