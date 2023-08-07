import 'package:flutter/material.dart';
import 'package:newproject/utils/buttons.dart';
import 'package:newproject/utils/colors.dart';

class EditProfileImage extends StatefulWidget {
  const EditProfileImage({super.key});

  @override
  State<EditProfileImage> createState() => _EditProfileImageState();
}

class _EditProfileImageState extends State<EditProfileImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: textColor),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Update Image",
            style: TextStyle(color: textColor),
          ),
        ),
        backgroundColor: mainColor,
      ),
      backgroundColor: mainColor,
      body: Column(
        children: [
          Container(
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
                  child: Container(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage("assets/Image.png"))),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "CUSTOMIZE YOUR PROFILE",
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Add the images you want to personalize \nyour profile.",
            style: TextStyle(
                color: Colors.white.withOpacity(.6),
                fontWeight: FontWeight.w400,
                fontSize: 15),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          SaveButton(title: "Upload new profile image", onTap: () {}),
          SizedBox(
            height: 15,
          ),
          SaveButton(title: "Upload new background image", onTap: () {})
        ],
      ),
    );
  }
}
