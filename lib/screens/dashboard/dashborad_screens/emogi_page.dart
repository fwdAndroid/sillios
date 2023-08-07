import 'package:flutter/material.dart';
import 'package:newproject/utils/colors.dart';

class EmogiPage extends StatefulWidget {
  const EmogiPage({super.key});

  @override
  State<EmogiPage> createState() => _EmogiPageState();
}

class _EmogiPageState extends State<EmogiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: TextFormField(
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: mainColor,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),

                        borderSide: BorderSide(color: mainTextFormColor),
                        //<-- SEE HERE
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: mainTextFormColor),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: mainTextFormColor),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: mainTextFormColor),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: mainTextFormColor),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      border: InputBorder.none,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/search-01.png",
                          height: 12,
                        ),
                      ),
                      hintText: "Search an Account",
                      hintStyle:
                          TextStyle(color: Color(0xffFFFFFF).withOpacity(.3))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "My Friends",
                  style: TextStyle(
                      color: Color(0xffF9FAFB),
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ListTile(
                          leading: CircleAvatar(
                              backgroundImage: AssetImage("assets/Image.png")),
                          title: Text(
                            "Alfredo Calzoni",
                            style: TextStyle(
                                color: Color(0xffF9FAFB),
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                          subtitle: Text(
                            "4 events ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xffA2A5AA)),
                          )),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "My Associations",
                  style: TextStyle(
                      color: Color(0xffF9FAFB),
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ListTile(
                          leading: CircleAvatar(
                              backgroundImage: AssetImage("assets/Image.png")),
                          title: Text(
                            "Alfredo Calzoni",
                            style: TextStyle(
                                color: Color(0xffF9FAFB),
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                          subtitle: Text(
                            "4 events ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xffA2A5AA)),
                          )),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "My Professionals",
                  style: TextStyle(
                      color: Color(0xffF9FAFB),
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ListTile(
                          leading: CircleAvatar(
                              backgroundImage: AssetImage("assets/Image.png")),
                          title: Text(
                            "Alfredo Calzoni",
                            style: TextStyle(
                                color: Color(0xffF9FAFB),
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                          subtitle: Text(
                            "4 events ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xffA2A5AA)),
                          )),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
