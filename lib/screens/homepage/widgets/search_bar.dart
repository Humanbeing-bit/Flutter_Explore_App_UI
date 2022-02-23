import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final fav = ['Popular', 'Featured', 'Most Visite', 'Asia'];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Column(
        children: [
          Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: 'Where do you want to go?',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
