import 'package:flutter/material.dart';
import 'package:newproject/utils/colors.dart';
import 'package:newproject/widgets/event_creation_widget.dart';

class CreateActivityPage extends StatefulWidget {
  const CreateActivityPage({super.key});

  @override
  State<CreateActivityPage> createState() => _CreateActivityPageState();
}

class _CreateActivityPageState extends State<CreateActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          "Tracking Event",
          style: TextStyle(color: textColor),
        ),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: EventCreationWidget(),
      ),
    );
  }
}
