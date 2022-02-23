import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_explore_app/constants/constants.dart';
import 'package:flutter_explore_app/model/placelistmodel.dart';
import 'package:flutter_explore_app/screens/homepage/widgets/expanding_dots.dart';
import 'package:flutter_explore_app/screens/homepage/widgets/placelists_builder.dart';
import 'package:flutter_explore_app/screens/nextpage/second_page.dart';

class PlaceItem extends StatelessWidget {
  final Locations placelist;
  PlaceItem(this.placelist);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: (){
          Navigator.of(context).push(
            CupertinoPageRoute(builder: (context)=> SecondPage(placelist))
          );
        },
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
            image: AssetImage(placelist.image),
            scale: 0.2,
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
                top: 10,
                right: 10,
                child: Container(
                  width: 50,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.star,
                        size: 18,
                        color: ConstColors.green,
                      ),
                      Text(
                        placelist.rating.toString(),
                        style: TextStyle(
                          color: ConstColors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                )),
            Positioned(
                top: 170,
                left: 8,
                right: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Discover ${placelist.title}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Icon(
                            placelist.selected
                                ? Icons.favorite_outlined
                                : Icons.favorite_border_outlined,
                            color: placelist.selected ? Colors.red : Colors.black,
                            size: 15,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "${placelist.days} days",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5, right: 5),
                          height: 5,
                          width: 5,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                        ),
                        Text(
                          "${placelist.cost} Euro",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
