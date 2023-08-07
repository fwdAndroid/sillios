import 'package:flutter/material.dart';
import 'package:newproject/screens/login/sign_in_account.dart';
import 'package:newproject/screens/privacy/privacy_policy.dart';
import 'package:newproject/utils/colors.dart';
import 'package:newproject/utils/controllers.dart';
import 'package:newproject/utils/textformfield.dart';

class ProfileAccount extends StatefulWidget {
  const ProfileAccount({super.key});

  @override
  State<ProfileAccount> createState() => _ProfileAccountState();
}

class _ProfileAccountState extends State<ProfileAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F616),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Center(child: Image.asset("assets/small.png")),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "CREATE ACCOUNT",
              style: TextStyle(
                  color: Color(0xffF9FAFB),
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create user name",
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
                  hintText: "Enter name",
                  controller: usernameCreateControllers,
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
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
                  controller: emailCreateControllers,
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
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
                  hintText: "Create a password",
                  controller: createpassword,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => PrivacyPolicy()));
            },
            child: Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                child: Image.asset("assets/s.png")),
          ),
          SizedBox(
            height: 30,
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
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
                            builder: (builder) => SignInAccount()));
                  },
                  child: Text(
                    " Log in",
                    style: TextStyle(
                        color: buttonColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
