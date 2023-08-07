import 'package:flutter/material.dart';
import 'package:newproject/utils/buttons.dart';
import 'package:newproject/utils/colors.dart';
import 'package:newproject/utils/controllers.dart';
import 'package:newproject/utils/textformfield.dart';

class EditProfileTextWidgets extends StatefulWidget {
  const EditProfileTextWidgets({super.key});

  @override
  State<EditProfileTextWidgets> createState() => _EditProfileTextWidgetsState();
}

class _EditProfileTextWidgetsState extends State<EditProfileTextWidgets> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "First Name",
                            style: TextStyle(
                                color: Color(0xffF9FAFB),
                                fontWeight: FontWeight.w300,
                                fontSize: 15),
                          ),
                          TextFormInputField(
                            textInputType: TextInputType.streetAddress,
                            hintText: "Fawad",
                            controller: editFirstNameController,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Last Name",
                            style: TextStyle(
                                color: Color(0xffF9FAFB),
                                fontWeight: FontWeight.w300,
                                fontSize: 15),
                          ),
                          TextFormInputField(
                            textInputType: TextInputType.text,
                            hintText: "Kaleem",
                            controller: editLastNameController,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "UserName",
                  style: TextStyle(
                      color: Color(0xffF9FAFB),
                      fontWeight: FontWeight.w300,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormInputField(
                  textInputType: TextInputType.text,
                  hintText: "Fawad Kaleeem",
                  controller: editProfileUserNameController,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email",
                  style: TextStyle(
                      color: Color(0xffF9FAFB),
                      fontWeight: FontWeight.w300,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormInputField(
                  textInputType: TextInputType.text,
                  hintText: "abc@gmail.com",
                  controller: editProfileEmailController,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Password",
                  style: TextStyle(
                      color: Color(0xffF9FAFB),
                      fontWeight: FontWeight.w300,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormInputField(
                  suIcon: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  textInputType: TextInputType.text,
                  hintText: "*******",
                  controller: editProfilePasswordController,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Phone",
                  style: TextStyle(
                      color: Color(0xffF9FAFB),
                      fontWeight: FontWeight.w300,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormInputField(
                  textInputType: TextInputType.text,
                  hintText: "+124 535 5235",
                  controller: editProfilePhoneController,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bio (max 100 words)",
                  style: TextStyle(
                      color: Color(0xffF9FAFB),
                      fontWeight: FontWeight.w300,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: editDescriptioncController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: "Entrer description",
                      hintStyle: TextStyle(color: Color(0xff949494)),
                      fillColor: mainTextFormColor,
                      filled: true,
                      border: InputBorder.none),
                  maxLines: 5,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SaveButton(title: "Save Changes", onTap: () {}),
          )
        ],
      ),
    ));
  }
}
