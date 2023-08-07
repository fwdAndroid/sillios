import 'package:flutter/material.dart';
import 'package:newproject/utils/colors.dart';

class EmptyMessage extends StatefulWidget {
  const EmptyMessage({super.key});

  @override
  State<EmptyMessage> createState() => _EmptyMessageState();
}

class _EmptyMessageState extends State<EmptyMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
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
          Spacer(),
          Image.asset(
            "assets/EmptyState.png",
            fit: BoxFit.cover,
            height: 200,
          ),
          Text(
            "Your inbox is empty",
            style: TextStyle(
                color: textColor, fontSize: 20, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "All incoming requests will be listed \nin this folder",
            style: TextStyle(
                color: textColor, fontSize: 16, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          Spacer(),
          Spacer(),
        ],
      ),
    );
  }
}
