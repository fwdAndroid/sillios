import 'package:flutter/material.dart';
import 'package:newproject/screens/events/event_fees.dart';
import 'package:newproject/utils/buttons.dart';
import 'package:newproject/utils/colors.dart';
import 'package:newproject/utils/textUtils.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({super.key});

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          "Trekking Event",
          style: TextStyle(color: textColor),
        ),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/images.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Event name",
                style: TextStyle(
                    color: Color(0xffF9FAFB),
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/calendar-01.png",
                    height: 28,
                    width: 28,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Date",
                    style: TextStyle(
                        color: Color(0xffF9FAFB),
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.pin_drop,
                    color: textColor,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Location",
                    style: TextStyle(
                        color: Color(0xffF9FAFB),
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/users-profiles-02.png",
                    height: 25,
                    width: 25,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "300 Participants - Limited spots",
                    style: TextStyle(
                        color: Color(0xffF9FAFB),
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Divider(
                color: Color(0xff5F656D),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Descriptions",
                style: TextStyle(
                    color: Color(0xffF9FAFB),
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                descriptionText,
                style: TextStyle(
                    color: Color(0xffF9FAFB),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            Center(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SaveButton(
                      title: "Participate",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => EventFees()));
                      })),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
