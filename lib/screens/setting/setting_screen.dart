import 'package:flutter/material.dart';
import 'package:newproject/screens/setting/contact_us.dart';
import 'package:newproject/screens/setting/language_setting.dart';
import 'package:newproject/screens/setting/report.dart';
import 'package:newproject/screens/setting/terms.dart';
import 'package:newproject/utils/colors.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Setting",
          style: TextStyle(color: textColor),
        ),
        backgroundColor: mainColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              color: Color(0xff21252A),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => ReportAccount()));
                    },
                    leading: Image.asset(
                      "assets/Left Icon.png",
                      height: 20,
                      width: 20,
                    ),
                    trailing: Image.asset(
                      "assets/chevron-right.png",
                      height: 25,
                      width: 24,
                    ),
                    title: Text(
                      "Report A Account",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => ContactUs()));
                    },
                    leading: Image.asset(
                      "assets/contact.png",
                      height: 20,
                      width: 20,
                    ),
                    trailing: Image.asset(
                      "assets/chevron-right.png",
                      height: 25,
                      width: 24,
                    ),
                    title: Text(
                      "Contact us",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => Terms()));
                    },
                    leading: Image.asset(
                      "assets/note.png",
                      height: 20,
                      width: 20,
                    ),
                    trailing: Image.asset(
                      "assets/chevron-right.png",
                      height: 25,
                      width: 24,
                    ),
                    title: Text(
                      "Termes & conditions",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => LanguageSetting()));
                    },
                    leading: Image.asset(
                      "assets/translate_FILL0_wght300_GRAD0_opsz20 1.png",
                      height: 20,
                      width: 20,
                    ),
                    trailing: Image.asset(
                      "assets/chevron-right.png",
                      height: 25,
                      width: 24,
                    ),
                    title: Text(
                      "Language",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
