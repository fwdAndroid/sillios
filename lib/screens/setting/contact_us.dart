import 'package:flutter/material.dart';
import 'package:newproject/utils/buttons.dart';
import 'package:newproject/utils/colors.dart';
import 'package:newproject/utils/controllers.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Contact us",
          style: TextStyle(color: textColor),
        ),
        backgroundColor: mainColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 335,
              height: 560,
              child: Card(
                color: Color(0xff21252A),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Message for Solis",
                          style: TextStyle(
                              color: textColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                      child: TextFormField(
                        maxLines: 15,
                        style: TextStyle(color: Colors.white),
                        controller: contactText,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xff32373E),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: mainTextFormColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: mainTextFormColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: mainTextFormColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: mainTextFormColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Place Holder",
                          hintStyle: TextStyle(color: Color(0xff949494)),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                          margin: EdgeInsets.only(
                              left: 15, right: 15, top: 10, bottom: 10),
                          child: SaveButton(title: "Send", onTap: () {})),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
