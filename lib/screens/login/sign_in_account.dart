import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newproject/screens/accounttype/create_account.dart';
import 'package:newproject/screens/dashboard/main_dashboard.dart';
import 'package:newproject/screens/login/forgot/forgot_password.dart';
import 'package:newproject/utils/buttons.dart';
import 'package:newproject/utils/colors.dart';
import 'package:newproject/utils/controllers.dart';
import 'package:newproject/utils/textformfield.dart';

class SignInAccount extends StatefulWidget {
  const SignInAccount({super.key});

  @override
  State<SignInAccount> createState() => _SignInAccountState();
}

class _SignInAccountState extends State<SignInAccount> {
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
            "WELCOME BACK!",
            style: TextStyle(
                color: Color(0xffF9FAFB),
                fontWeight: FontWeight.bold,
                fontSize: 20),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 35),
            child: TextFormInputField(
                controller: loginEmailController,
                hintText: "tobias@example.com",
                textInputType: TextInputType.emailAddress),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 35),
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              obscureText: true,
              controller: loginPasswordController,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.visibility,
                  color: iconColor,
                ),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: mainTextFormColor),
                  borderRadius: BorderRadius.circular(30),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: mainTextFormColor),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: mainTextFormColor),
                  borderRadius: BorderRadius.circular(30),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: mainTextFormColor),
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: "Password",
                labelStyle: TextStyle(color: Color(0xff78E2A7)),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 20),
              child: SaveButton(
                  title: "Sign In",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => MainScreen()));
                  })),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 20),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => ForgotPassword()));
                },
                child: Text(
                  "Forgot Password!",
                  style: TextStyle(color: forgotColor),
                )),
          ),
          Spacer(),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Dont't have an account?",
                    style: TextStyle(
                        color: Color(0xffF9FAFB),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => CreateAccount()));
                    },
                    child: Text(
                      " Create an account",
                      style: TextStyle(
                          color: buttonColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
