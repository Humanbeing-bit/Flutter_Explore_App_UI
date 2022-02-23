import 'package:flutter/material.dart';
import 'package:flutter_explore_app/constants/constants.dart';

class CustomSection extends StatefulWidget {
  @override
  State<CustomSection> createState() => _CustomSection();
}

class _CustomSection extends State<CustomSection> {
  final fav = <String>[
    'Popular',
    'Featured',
    'Most Visited',
    'Asia',
    'Africa',
    'India'
  ];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(top: 5, left: 15, right: 15,bottom: 5),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          top: 5,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: selected == index
                                  ? ConstColors.green
                                  : Colors.transparent,
                              shape: selected == index
                                  ? BoxShape.circle
                                  : BoxShape.circle,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 14),
                          child: Text(
                            fav[index],                 
                            style: TextStyle(
                                fontSize: 17,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: selected == index
                                    ? ConstColors.green
                                    : Colors.grey[700]),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 20,
              ),
          itemCount: fav.length),
    );
  }
}
