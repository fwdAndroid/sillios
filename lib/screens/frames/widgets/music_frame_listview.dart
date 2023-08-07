import 'package:flutter/material.dart';
import 'package:newproject/screens/events/event_details.dart';
import 'package:newproject/utils/colors.dart';

class MusicFrameListWidget extends StatefulWidget {
  const MusicFrameListWidget({super.key});

  @override
  State<MusicFrameListWidget> createState() => _MusicFrameListWidgetState();
}

class _MusicFrameListWidgetState extends State<MusicFrameListWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      child: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              height: 120,
              child: Card(
                color: Color(0xff21252A),
                child: Align(
                  alignment: Alignment.center,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => EventDetails()));
                    },
                    leading: Image.asset("assets/Mask.png"),
                    title: Text(
                      "Trekking Event",
                      style: TextStyle(
                          color: Color(0xffF9FAFB),
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    subtitle: Text(
                      "Concordia University ",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffA2A5AA)),
                    ),
                    trailing: Container(
                      margin: EdgeInsets.only(right: 10, bottom: 10),
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
                  ),
                ),
              ),
            ));
      }),
    );
  }
}
