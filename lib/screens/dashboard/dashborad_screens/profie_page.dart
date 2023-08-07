import 'package:flutter/material.dart';
import 'package:newproject/screens/followers/follower_page.dart';
import 'package:newproject/screens/followers/following_page.dart';
import 'package:newproject/screens/setting/setting_screen.dart';
import 'package:newproject/utils/colors.dart';
import 'package:newproject/widgets/edit_profile_stack_widget.dart';
import 'package:newproject/widgets/event_grid_widget_profile.dart';

import '../../../widgets/account_follow_unfollow_detial_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/search-01.png",
              width: 28,
              height: 28,
            ),
          )
        ],
        backgroundColor: mainColor,
      ),
      backgroundColor: mainColor,
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const EditProfileStackWidget(),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Louis Roi",
            style: TextStyle(
                color: textColor, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Text(
            "@Tobias0304",
            style: TextStyle(
                color: textColor, fontSize: 14, fontWeight: FontWeight.w400),
          ),
          const AccountFollowUnFollowWidget(),
          Divider(
            color: dividerColor,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Mcgill University - Faculty of Arts",
              style: TextStyle(
                  color: textColor, fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          Divider(
            color: dividerColor,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Bio max 100 words.",
              style: TextStyle(
                  color: textColor, fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          Divider(
            color: dividerColor,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => FolowersPage()));
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/Avatar Group.png",
                        height: 24,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "10 Followers",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => FollowingPage()));
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/Avatar Group.png",
                        height: 24,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "10 Following",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hosted events",
                  style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "10 Events",
                  style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const EventGridWidgetProfile(),
        ],
      )),
    );
  }
}
