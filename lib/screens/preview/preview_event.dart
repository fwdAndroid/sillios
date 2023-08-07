import 'package:flutter/material.dart';
import 'package:newproject/utils/buttons.dart';
import 'package:newproject/utils/colors.dart';
import 'package:newproject/utils/textUtils.dart';

class PreviewScreen extends StatefulWidget {
  const PreviewScreen({super.key});

  @override
  State<PreviewScreen> createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          "Tracking Event",
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
                "Event Name",
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
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlineButton(
                    title: "Edit",
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (builder) => PreviewScreen()));
                    })),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: SaveButton(title: "Publish", onTap: alert)),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  void alert() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xff21252A),
          title: Text(
            'CONGRATULATIONS!',
            style: TextStyle(
                color: textColor, fontSize: 20, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Image.asset('assets/Group.png'),
                SizedBox(
                  height: 9,
                ),
                Text(
                  'You have publish the event successfully!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            SaveButton(
                title: "Close",
                onTap: () {
                  Navigator.pop(context);
                })
          ],
        );
      },
    );
  }
}
