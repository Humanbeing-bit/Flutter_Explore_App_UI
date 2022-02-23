import 'package:flutter/material.dart';
import 'package:flutter_explore_app/constants/constants.dart';

class BottomNavigation extends StatefulWidget {
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List items = [
    Icons.home,
    Icons.calendar_today,
    Icons.portrait_rounded,
    Icons.menu,
  ];
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ConstColors.green,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 5,
          right: 5,
          top: 12,
          
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            items.length,
            (index) {
              return InkWell(
                 onTap: (){
                setState(() {
                  pageIndex = index;
                });
              },
                child: Column(
                  children: [
                    Icon(
                      items[index],
                      size: 30,
                      color: pageIndex == index ? Colors.white : Colors.blue[100],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    pageIndex == index
                        ? Container(
                            width: 30,
                            height: 6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                                color: Colors.white, shape: BoxShape.rectangle),
                          )
                        : Container()
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
