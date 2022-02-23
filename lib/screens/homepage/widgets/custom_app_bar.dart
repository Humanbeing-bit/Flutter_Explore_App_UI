import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_explore_app/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Discover and Explore',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Stack(
            children: [
              Icon(
                Icons.notifications_none_sharp,
                color: Colors.black,
                size: 35,
              ),
              Positioned(
                right: 10,
                top: 5,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ConstColors.green,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
