import 'package:flutter/material.dart';
import 'package:newproject/utils/colors.dart';
import 'package:newproject/widgets/edit_profile_text_widget.dart';
import 'package:newproject/widgets/edit_profile_widget.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: textColor),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Edit Profile",
            style: TextStyle(color: textColor),
          ),
        ),
        backgroundColor: mainColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [const EditProfileWidget(), const EditProfileTextWidgets()],
        ),
      ),
    );
  }
}
