import 'package:flutter/material.dart';
import 'package:newproject/screens/models/chat_message_model.dart';
import 'package:newproject/utils/colors.dart';
import 'package:newproject/utils/controllers.dart';
import 'package:newproject/utils/textformfield.dart';

class ChatPage extends StatefulWidget {
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<Map<String, dynamic>> chatData = [
    {
      'user': 'John',
      'message': 'Hi, AI!',
      'image': null,
      'timestamp': '2023-07-30 10:15:00',
    },
    {
      'user': 'AI',
      'message': 'Hello! How can I help you?',
      'image': null,
      'timestamp': '2023-07-30 10:15:30',
    },
    {
      'user': 'John',
      'message': 'What\'s the weather like today?',
      'image': null,
      'timestamp': '2023-07-30 10:16:00',
    },
    {
      'user': 'AI',
      'message': 'I can check that for you!',
      'image': 'https://example.com/weather_image.png',
      'timestamp': '2023-07-30 10:16:30',
    },
    // Add more chat data here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: mainColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "<https://randomuser.me/api/portraits/men/5.jpg>"),
                  maxRadius: 20,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Kriss Benwat",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: textColor),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Online",
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: chatData.length,
            itemBuilder: (context, index) {
              final item = chatData[index];
              final isUser = item['user'] == 'John';
              final messageText = item['message'];
              final imageUrl = item['image'];
              final timestamp = item['timestamp'];

              return ListTile(
                  leading: isUser
                      ? null
                      : CircleAvatar(
                          // Replace with AI's profile image
                          backgroundImage: AssetImage('assets/Mask.png'),
                        ),
                  trailing: isUser
                      ? CircleAvatar(
                          // Replace with John's profile image
                          backgroundImage: AssetImage('assets/Mask.png'),
                        )
                      : null,
                  title: Container(
                    height: 50,
                    width: 248,
                    decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(0),
                            topRight: Radius.circular(12))),
                    child: Center(
                      child: Text(
                        messageText,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  subtitle: imageUrl != null
                      ? Text(
                          timestamp,
                          textAlign: TextAlign.right,
                          style: TextStyle(color: textColor),
                        )
                      : Text(
                          timestamp,
                          style: TextStyle(color: textColor),
                        )

                  //  styling here...
                  );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextFormInputField(
                      suIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/face-smile.png",
                          height: 12,
                          width: 12,
                        ),
                      ),
                      hintText: "Type Your Message",
                      textInputType: TextInputType.text,
                      controller: chatController,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      child: Image.asset(
                        "assets/Group 23.png",
                        width: 42,
                        height: 42,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
