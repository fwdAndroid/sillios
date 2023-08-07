import 'package:flutter/material.dart';
import 'package:newproject/screens/frames/widgets/amazing_grid_widget.dart';
import 'package:newproject/utils/colors.dart';
import 'package:newproject/utils/controllers.dart';

class EventNearByYourFrame extends StatefulWidget {
  const EventNearByYourFrame({super.key});

  @override
  State<EventNearByYourFrame> createState() => _EventNearByYourFrameState();
}

class _EventNearByYourFrameState extends State<EventNearByYourFrame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Discover amazing events",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: mainColor,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextFormField(
                controller: eventbyyouSearch,
                style: TextStyle(color: Colors.white, fontSize: 14),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff32373E),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),

                      borderSide: BorderSide(color: mainTextFormColor),
                      //<-- SEE HERE
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainTextFormColor),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainTextFormColor),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainTextFormColor),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainTextFormColor),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    border: InputBorder.none,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/search-01.png",
                        height: 12,
                      ),
                    ),
                    hintText: "Search",
                    hintStyle:
                        TextStyle(color: Color(0xffFFFFFF).withOpacity(.3))),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 66,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: buttonColor,
                    ),
                    child: Center(
                      child: Text(
                        "All",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    width: 66,
                    height: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: borderColor)),
                    child: Center(
                      child: Text(
                        "Today",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    width: 90,
                    height: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: borderColor)),
                    child: Center(
                      child: Text(
                        "This week",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    width: 90,
                    height: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: borderColor)),
                    child: Center(
                      child: Text(
                        "This month",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          AmazingGridWidget()
        ]),
      ),
    );
  }
}
