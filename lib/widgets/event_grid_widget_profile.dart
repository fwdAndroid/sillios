import 'package:flutter/material.dart';
import 'package:newproject/screens/events/event_details.dart';
import 'package:newproject/utils/colors.dart';

class EventGridWidgetProfile extends StatefulWidget {
  const EventGridWidgetProfile({super.key});

  @override
  State<EventGridWidgetProfile> createState() => _EventGridWidgetProfileState();
}

class _EventGridWidgetProfileState extends State<EventGridWidgetProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 400,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, // Set the number of items per row
        ),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => EventDetails()));
            },
            child: Container(
              child: Stack(
                children: [
                  Container(
                    width: 400,
                    height: 200,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/Masks.png"),
                      ),
                      color: Color(0xff21252A),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "21/12/2023",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "\$52",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 135,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff21252A),
                      ),
                      margin: EdgeInsets.only(left: 5),
                      height: 60,
                      width: MediaQuery.of(context).size.width / 1.56,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Trekking Event",
                              style: TextStyle(
                                  color: textColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
