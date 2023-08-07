import 'package:flutter/material.dart';
import 'package:newproject/screens/events/event_details.dart';
import 'package:newproject/utils/colors.dart';

class HomeListView extends StatefulWidget {
  const HomeListView({super.key});

  @override
  State<HomeListView> createState() => _HomeListViewState();
}

class _HomeListViewState extends State<HomeListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 120,
                  child: Card(
                    color: Color(0xff21252A),
                    child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (builder) => EventDetails()));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 8.0, right: 10),
                                    child: Image.asset(
                                      "assets/Mask.png",
                                      width: 80,
                                      height: 96,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Trekking Event",
                                        style: TextStyle(
                                            color: Color(0xffF9FAFB),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_pin,
                                            color: Color(0xffF9FAFB),
                                            size: 12,
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          Text(
                                            "Concordia University ",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xffA2A5AA)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(right: 10, bottom: 10),
                                    height: 24,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: Color(0xff1E4697),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Center(
                                      child: Text(
                                        "19 Jan",
                                        style: TextStyle(color: textColor),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                ));
          }),
    );
  }
}
