import 'package:flutter/material.dart';
import 'package:newproject/screens/frames/music_frame.dart';

import '../../../utils/colors.dart';

class AmazingGridWidget extends StatefulWidget {
  const AmazingGridWidget({super.key});

  @override
  State<AmazingGridWidget> createState() => _AmazingGridWidgetState();
}

class _AmazingGridWidgetState extends State<AmazingGridWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => MusicFrame()));
                  },
                  child: Image.asset(
                    "assets/card.png",
                    width: 150,
                    height: 235,
                  ),
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => MusicFrame()));
                    },
                    child: Image.asset(
                      "assets/study.png",
                      width: 150,
                      height: 235,
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => MusicFrame()));
                  },
                  child: Image.asset(
                    "assets/card1.png",
                    width: 150,
                    height: 235,
                  ),
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => MusicFrame()));
                    },
                    child: Image.asset(
                      "assets/card2.png",
                      width: 150,
                      height: 235,
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => MusicFrame()));
                  },
                  child: Image.asset(
                    "assets/card 4.png",
                    width: 150,
                    height: 235,
                  ),
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => MusicFrame()));
                    },
                    child: Image.asset(
                      "assets/card3.png",
                      width: 150,
                      height: 235,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
