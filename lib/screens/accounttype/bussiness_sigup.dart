import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newproject/screens/account/profile_accout.dart';
import 'package:newproject/screens/login/sign_in_account.dart';
import 'package:newproject/utils/colors.dart';
import 'package:newproject/utils/controllers.dart';
import 'package:newproject/utils/textformfield.dart';

class BusinessSignUp extends StatefulWidget {
  const BusinessSignUp({super.key});

  @override
  State<BusinessSignUp> createState() => _BusinessSignUpState();
}

class _BusinessSignUpState extends State<BusinessSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F816),
      body: SingleChildScrollView(
        child: Padding(
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
                  "You ARE A BUSINESS",
                  style: TextStyle(
                      color: Color(0xffF9FAFB),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name of business",
                      style: TextStyle(
                          color: Color(0xffFAFAFA),
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormInputField(
                      textInputType: TextInputType.text,
                      hintText: "Enter name",
                      controller: bussinessController,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Business Address",
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
                      hintText: "Enter Address",
                      controller: universityControllers,
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
                      "City",
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
                      hintText: "Enter City",
                      controller: cityControllers,
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
                      "Postal Code",
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
                      hintText: "233525s",
                      controller: postalControllers,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => ProfileAccount()));
                },
                child: Container(
                    margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                    child: Image.asset("assets/s.png")),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20, top: 15),
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
      ),
    );
  }
}
