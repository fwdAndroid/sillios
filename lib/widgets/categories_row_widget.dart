import 'package:flutter/material.dart';
import 'package:newproject/screens/frames/event_near_by_you_frame.dart';
import 'package:newproject/utils/colors.dart';

class CategoriesRowWidget extends StatefulWidget {
  const CategoriesRowWidget({super.key});

  @override
  State<CategoriesRowWidget> createState() => _CategoriesRowWidgetState();
}

class _CategoriesRowWidgetState extends State<CategoriesRowWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => EventNearByYourFrame()));
            },
            child: Column(
              children: [
                Image.asset(
                  "assets/all.png",
                  height: 52,
                  width: 52,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "All",
                  style: TextStyle(color: textColor),
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => EventNearByYourFrame()));
            },
            child: Column(
              children: [
                Image.asset(
                  "assets/music.png",
                  height: 52,
                  width: 52,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Music",
                  style: TextStyle(color: textColor),
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => EventNearByYourFrame()));
            },
            child: Column(
              children: [
                Image.asset(
                  "assets/Icon.png",
                  height: 52,
                  width: 52,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Cycling",
                  style: TextStyle(color: textColor),
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => EventNearByYourFrame()));
            },
            child: Column(
              children: [
                Image.asset(
                  "assets/Icon-1.png",
                  height: 52,
                  width: 52,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Movie",
                  style: TextStyle(color: textColor),
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => EventNearByYourFrame()));
            },
            child: Column(
              children: [
                Image.asset(
                  "assets/Icon-2.png",
                  height: 52,
                  width: 52,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Art",
                  style: TextStyle(color: textColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
