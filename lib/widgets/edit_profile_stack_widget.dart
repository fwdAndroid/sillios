import 'package:flutter/material.dart';
import 'package:newproject/screens/account/edit_profile.dart';
import 'package:newproject/utils/colors.dart';

class EditProfileStackWidget extends StatefulWidget {
  const EditProfileStackWidget({super.key});

  @override
  State<EditProfileStackWidget> createState() => EditProfileStackWidgetState();
}

class EditProfileStackWidgetState extends State<EditProfileStackWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Stack(
        children: [
          Image.asset(
            "assets/bg.png",
            height: 200,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 5),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => EditProfile()));
                },
                child: Text(
                  "Edit Profile",
                  style: TextStyle(color: textColor),
                ),
              )),
          Container(
            child: Align(
                alignment: Alignment.bottomCenter,
                child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/Image.png"))),
          ),
        ],
      ),
    );
  }
}
