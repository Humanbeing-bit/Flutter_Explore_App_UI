import 'package:flutter/material.dart';
import 'package:flutter_explore_app/constants/constants.dart';

class PopularCatgs extends StatelessWidget {
  final popularnames = <String>['Surf', 'Forrest', 'Beach', 'Mountain'];
  final popularicons = <IconData>[
    Icons.beach_access_outlined,
    Icons.format_color_reset_outlined,
    Icons.bungalow_outlined,
    Icons.terrain_rounded,
  ];
  final colors = <Color>[
    
    ConstColors.blue,
    ConstColors.green,
    ConstColors.yellow,
    ConstColors.skyblue,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Popular Categories",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    margin: EdgeInsets.only(bottom: 5,top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colors.elementAt(0),
                    ),
                    child: Icon(
                      popularicons.elementAt(0),
                      color: Colors.blue[300],
                      size: 50,
                    ),
                  ),
                  Text(
                    popularnames.elementAt(0),
                    style: TextStyle(
                        color: Colors.grey[900], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    margin: EdgeInsets.only(bottom: 5,top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colors.elementAt(1),
                    ),
                    child: Icon(
                      popularicons.elementAt(1),
                      color: Colors.green[200],
                      size: 50,
                    ),
                  ),
                  Text(
                    popularnames.elementAt(1),
                    style: TextStyle(
                        color: Colors.grey[900], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    margin: EdgeInsets.only(bottom: 5,top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colors.elementAt(2),
                    ),
                    child: Icon(
                      popularicons.elementAt(2),
                      color: Colors.yellowAccent[400],
                      size: 50,
                    ),
                  ),
                  Text(
                    popularnames.elementAt(2),
                    style: TextStyle(
                        color: Colors.grey[900], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    margin: EdgeInsets.only(bottom: 5,top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colors.elementAt(3),
                    ),
                    child: Icon(
                      popularicons.elementAt(3),
                      color: Colors.blue,
                      size: 50,
                    ),
                  ),
                  Text(
                    popularnames.elementAt(3),
                    style: TextStyle(
                        color: Colors.grey[900], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
