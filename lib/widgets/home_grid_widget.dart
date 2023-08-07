import 'package:flutter/material.dart';
import 'package:newproject/utils/colors.dart';

class HomeGridWidget extends StatefulWidget {
  const HomeGridWidget({super.key});

  @override
  State<HomeGridWidget> createState() => _HomeGridWidgetState();
}

class _HomeGridWidgetState extends State<HomeGridWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, // Set the number of items per row
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 200, // Set the width of the item
            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.all(8.0),

            child: Stack(
              children: [
                Image.asset(
                  "assets/backimage.png",
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  "12",
                                  style: TextStyle(color: buttonColor),
                                ),
                                Text(
                                  "Jan",
                                  style: TextStyle(color: Color(0xff969B9D)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 10, bottom: 20),
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                              color: buttonColor,
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(
                            "Free",
                            style: TextStyle(color: textColor),
                            textAlign: TextAlign.center,
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Off Road Event",
                            style: TextStyle(
                                color: textColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Text(
                            "2.8 Km",
                            style: TextStyle(
                                color: textColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
