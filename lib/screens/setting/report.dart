import 'package:flutter/material.dart';
import 'package:newproject/utils/buttons.dart';
import 'package:newproject/utils/colors.dart';
import 'package:newproject/utils/controllers.dart';

class ReportAccount extends StatefulWidget {
  const ReportAccount({super.key});

  @override
  State<ReportAccount> createState() => _ReportAccountState();
}

class _ReportAccountState extends State<ReportAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Report an account",
          style: TextStyle(color: textColor),
        ),
        backgroundColor: mainColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                width: 335,
                height: 630,
                child: Card(
                  color: Color(0xff21252A),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Account Name",
                            style: TextStyle(
                                color: textColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Full name",
                            style: TextStyle(
                                color: Color(0xffC2C2C2),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Event name (if applicable)",
                            style: TextStyle(
                                color: textColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Name",
                            style: TextStyle(
                                color: Color(0xffC2C2C2),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.only(left: 0, top: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nature du problème",
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              CheckboxListTile(
                                activeColor: Color(0xff474F57),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                title: Transform.translate(
                                  offset: const Offset(-20, 0),
                                  child: Text(
                                    'During the event',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                value: false,
                                onChanged: (bool? value) {},
                              ),
                              CheckboxListTile(
                                activeColor: Color(0xff474F57),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                title: Transform.translate(
                                  offset: const Offset(-20, 0),
                                  child: Text(
                                    'Messaging',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                value: false,
                                onChanged: (bool? value) {},
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0.0),
                                child: CheckboxListTile(
                                  activeColor: Color(0xff474F57),
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                  title: Transform.translate(
                                    offset: const Offset(-20, 0),
                                    child: Text(
                                      'Mobile app issue',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  value: false,
                                  onChanged: (bool? value) {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Description of the issue",
                            style: TextStyle(
                                color: textColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        child: TextFormField(
                          maxLines: 3,
                          style: TextStyle(color: Colors.white),
                          controller: description,
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
      ),
    );
  }
}
