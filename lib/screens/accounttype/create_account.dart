import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newproject/screens/accounttype/associate_signup.dart';
import 'package:newproject/screens/accounttype/bussiness_sigup.dart';
import 'package:newproject/screens/accounttype/student_signup.dart';
import 'package:newproject/screens/login/sign_in_account.dart';
import 'package:newproject/utils/buttons.dart';
import 'package:newproject/utils/colors.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0F1216),
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Center(
            child: SvgPicture.asset("assets/Logo v.2.svg"),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "I Want To Create An Account As",
            style: TextStyle(
                color: Color(0xffF9FAFB),
                fontWeight: FontWeight.bold,
                fontSize: 20),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 50),
            child: OutlineButton(
              title: "Student",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => StudentSignUp()));
              },
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: OutlineButton(
                title: "Association",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => AssosicatePage()));
                },
              )),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: OutlineButton(
              title: "Business",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => BusinessSignUp()));
              },
            ),
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
          ),
        ],
      ),
    );
  }
}
