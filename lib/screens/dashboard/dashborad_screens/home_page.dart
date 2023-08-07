import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newproject/screens/frames/event_near_by_you_frame.dart';
import 'package:newproject/screens/setting/setting_screen.dart';
import 'package:newproject/utils/colors.dart';
import 'package:newproject/widgets/categories_row_widget.dart';
import 'package:newproject/widgets/home_grid_widget.dart';
import 'package:newproject/widgets/home_listview_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => SettingScreen()));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/menu-04.png",
              width: 28,
              height: 28,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            "assets/Logo v.2.svg",
            width: 33,
            height: 40,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => EventNearByYourFrame()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/search-01.png",
                width: 28,
                height: 28,
              ),
            ),
          )
        ],
        backgroundColor: mainColor,
      ),
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            CategoriesRowWidget(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Event Near By You",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => EventNearByYourFrame()));
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                            fontSize: 12,
                            color: buttonColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            HomeGridWidget(),
            Container(
              margin: EdgeInsets.only(left: 10, bottom: 10),
              child: Text(
                "This Week's Event",
                style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            HomeListView(),
          ],
        ),
      ),
    );
  }
}
