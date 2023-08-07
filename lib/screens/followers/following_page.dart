import 'package:flutter/material.dart';
import 'package:newproject/utils/buttons.dart';
import 'package:newproject/utils/colors.dart';

class FollowingPage extends StatefulWidget {
  const FollowingPage({super.key});

  @override
  State<FollowingPage> createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Following",
          style: TextStyle(color: textColor),
        ),
        backgroundColor: mainColor,
      ),
      backgroundColor: mainColor,
      body: Column(
        children: [
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
                    hintText: "Search Chat",
                    hintStyle:
                        TextStyle(color: Color(0xffFFFFFF).withOpacity(.3))),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.5,
            child: ListView.builder(
                itemCount: 5,
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
                      ),
                      trailing: Container(
                          height: 32,
                          width: 92,
                          child: SaveButton(title: "Follow", onTap: () {})),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
