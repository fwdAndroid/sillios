import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newproject/screens/account/profile_accout.dart';
import 'package:newproject/screens/login/sign_in_account.dart';
import 'package:newproject/utils/colors.dart';
import 'package:newproject/utils/controllers.dart';
import 'package:newproject/utils/textformfield.dart';
import 'package:intl/intl.dart';

class StudentSignUp extends StatefulWidget {
  const StudentSignUp({super.key});

  @override
  State<StudentSignUp> createState() => _StudentSignUpState();
}

class _StudentSignUpState extends State<StudentSignUp> {
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
              Center(
                child: SvgPicture.asset("assets/Logo v.2.svg"),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "You ARE A STUDENT",
                  style: TextStyle(
                      color: Color(0xffF9FAFB),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
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
                      "Name",
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
                      controller: studentNameController,
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
                      "Last Name",
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
                      hintText: "Roi",
                      controller: lastNameControllers,
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
                      "Birthday",
                      style: TextStyle(
                          color: Color(0xffF9FAFB),
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormInputField(
                      onTap: () {
                        setDate(context, studentBirthdayController);
                      },
                      textInputType: TextInputType.text,
                      hintText: "DD/MM/YYYY",
                      controller: studentBirthdayController,
                      suIcon: Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                      ),
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
                      suIcon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                      textInputType: TextInputType.text,
                      hintText: "Select Your City",
                      controller: studentCityControllers,
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
                      "Neighborhood",
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
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                      textInputType: TextInputType.text,
                      hintText: "Select Your borough",
                      controller: neighborControllers,
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
                      suIcon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                      textInputType: TextInputType.text,
                      hintText: "Select Your university",
                      controller: studentUniversityControllers,
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
                      "Program",
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
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                      textInputType: TextInputType.text,
                      hintText: "Select Your program",
                      controller: studentProgramControllers,
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
              SizedBox(
                height: 10,
              ),
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
        ),
      ),
    );
  }

  setDate(context, TextEditingController controller) {
    showDatePicker(
      context: context,
      initialDate: controller.text.isNotEmpty
          ? DateFormat('dd/MM/yyyy').parse(controller.text)
          : DateTime.now(),
      firstDate: DateTime(1950, 01, 01),
      lastDate: DateTime(2100, 01, 01),
    ).then((value) {
      if (value != null) {
        controller.text = DateFormat('dd/MM/yyyy').format(value);
      }
    });
  }
}
