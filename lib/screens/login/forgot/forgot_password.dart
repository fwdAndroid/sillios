import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newproject/screens/dashboard/main_dashboard.dart';
import 'package:newproject/screens/login/forgot/change_password.dart';
import 'package:newproject/screens/login/sign_in_account.dart';
import 'package:newproject/utils/buttons.dart';
import 'package:newproject/utils/colors.dart';
import 'package:newproject/utils/controllers.dart';
import 'package:newproject/utils/textformfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
            "Enter 4 Digit Code",
            style: TextStyle(
                color: Color(0xffF9FAFB),
                fontWeight: FontWeight.bold,
                fontSize: 20),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "A four-digit code should have come to your \nemail address that you indicated.",
            style: TextStyle(
                color: Color(0xffF9FAFB),
                fontWeight: FontWeight.w400,
                fontSize: 16),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 35),
              child: TextFormInputField(
                  controller: passController,
                  hintText: "0000",
                  textInputType: TextInputType.emailAddress),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: SaveButton(
                      title: "Continue",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => ChangePassword()));
                      })),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: OutlineButton(
                      title: "Cancel",
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
