import 'package:flutter/material.dart';
import 'package:newproject/utils/colors.dart';

class LanguageSetting extends StatefulWidget {
  const LanguageSetting({super.key});

  @override
  State<LanguageSetting> createState() => _LanguageSettingState();
}

class _LanguageSettingState extends State<LanguageSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Language",
          style: TextStyle(color: textColor),
        ),
        backgroundColor: mainColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Color(0xff21252A),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (builder) => ReportAccount()));
                    },
                    trailing: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                    title: Text(
                      "English",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (builder) => ContactUs()));
                    },
                    title: Text(
                      "French",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
