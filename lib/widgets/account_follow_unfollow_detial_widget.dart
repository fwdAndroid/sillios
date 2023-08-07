import 'package:flutter/material.dart';
import 'package:newproject/utils/colors.dart';

class AccountFollowUnFollowWidget extends StatefulWidget {
  const AccountFollowUnFollowWidget({super.key});

  @override
  State<AccountFollowUnFollowWidget> createState() =>
      _AccountFollowUnFollowWidgetState();
}

class _AccountFollowUnFollowWidgetState
    extends State<AccountFollowUnFollowWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                "Total",
                style: TextStyle(
                    color: Color(0xffFFFFFF).withOpacity(.6),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "20",
                style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(
                "Hosted",
                style: TextStyle(
                    color: Color(0xffFFFFFF).withOpacity(.6),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "2",
                style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(
                "Attending",
                style: TextStyle(
                    color: Color(0xffFFFFFF).withOpacity(.6),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "20",
                style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ],
      ),
    );
  }
}
