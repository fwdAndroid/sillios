import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newproject/screens/login/sign_in_account.dart';
import 'package:newproject/utils/buttons.dart';
import 'package:newproject/utils/colors.dart';
import 'package:newproject/utils/controllers.dart';
import 'package:newproject/utils/textformfield.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          SvgPicture.asset("assets/Logo v.2.svg"),
          SizedBox(
            height: 30,
          ),
          Text(
            "Change Your Password",
            style: TextStyle(
                color: Color(0xffF9FAFB),
                fontWeight: FontWeight.bold,
                fontSize: 20),
            textAlign: TextAlign.center,
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
                  textInputType: TextInputType.text,
                  hintText: "Create a new passsword",
                  controller: newPassword,
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
                  "Confrim Passowrd",
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
                  hintText: "Confirm new password",
                  controller: confrimPassword,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: SaveButton(
                      title: "Create",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => SignInAccount()));
                      })),
            ),
          ),
        ],
      ),
    );
  }
}
