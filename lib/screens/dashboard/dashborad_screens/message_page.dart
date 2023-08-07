import 'package:flutter/material.dart';
import 'package:newproject/screens/chat/chat_page.dart';
import 'package:newproject/screens/chat/empty_message.dart';
import 'package:newproject/utils/colors.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: TextFormField(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => EmptyMessage()));
              },
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
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.4,
            child: ListView.builder(
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => ChatPage()));
                      },
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
                        "Hi How are you",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xffA2A5AA)),
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: buttonColor),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "09:18",
                            style: TextStyle(color: timeColor),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
