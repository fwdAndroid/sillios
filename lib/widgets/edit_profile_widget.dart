import 'package:flutter/material.dart';
import 'package:newproject/screens/account/edit_profile_image.dart';

class EditProfileWidget extends StatefulWidget {
  const EditProfileWidget({super.key});

  @override
  State<EditProfileWidget> createState() => EditProfileWidgetState();
}

class EditProfileWidgetState extends State<EditProfileWidget> {
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
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => EditProfileImage()));
            },
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  child: Image.asset(
                "assets/Frame 427319325.png",
                height: 130,
              )),
            ),
          )
        ],
      ),
    );
  }
}
