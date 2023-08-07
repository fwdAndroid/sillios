import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newproject/screens/accounttype/create_account.dart';
import 'package:newproject/screens/login/sign_in_account.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F1216),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/back.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
            ),
            SvgPicture.asset("assets/Logo v.2.svg"),
            Spacer(),
            Text(
              "Welcome to Solis!",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            Text(
              "Choose a preferred way",
              style: TextStyle(
                  color: Colors.white.withOpacity(.6),
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => CreateAccount()));
              },
              child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Image.asset("assets/btb.png")),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => SignInAccount()));
              },
              child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Image.asset("assets/login.png")),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
