import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newproject/screens/account/profile_accout.dart';
import 'package:newproject/screens/login/sign_in_account.dart';
import 'package:newproject/utils/colors.dart';
import 'package:newproject/utils/controllers.dart';
import 'package:newproject/utils/textformfield.dart';

class AssosicatePage extends StatefulWidget {
  const AssosicatePage({super.key});

  @override
  State<AssosicatePage> createState() => _AssosicatePageState();
}

class _AssosicatePageState extends State<AssosicatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F1216),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Center(child: SvgPicture.asset("assets/Logo v.2.svg")),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "YOU ARE AN ASSOCIATION",
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
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name of association",
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
                    controller: nameControllers,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "University",
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
                    hintText: "Select Your University",
                    controller: universityControllers,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => ProfileAccount()));
              },
              child: Container(
                  margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                  child: Image.asset("assets/s.png")),
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
      ),
    );
  }
}
