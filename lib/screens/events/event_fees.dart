import 'package:flutter/material.dart';
import 'package:newproject/screens/events/widgets/payment_textfield_widget.dart';
import 'package:newproject/utils/colors.dart';

class EventFees extends StatefulWidget {
  const EventFees({super.key});

  @override
  State<EventFees> createState() => _EventFeesState();
}

class _EventFeesState extends State<EventFees> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          "Payment",
          style: TextStyle(color: textColor),
        ),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ticket classique x1",
                    style: TextStyle(
                        color: textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "\$ 20.00",
                    style: TextStyle(
                        color: textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 8, right: 8),
              child: Divider(
                color: Color(0xff94999E),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "GST/QST",
                    style: TextStyle(
                        color: textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "\$ 2.60",
                    style: TextStyle(
                        color: textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 8, right: 8),
              child: Divider(
                color: Color(0xff94999E),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                        color: textColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "\$ 22.60",
                    style: TextStyle(
                        color: textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 8, right: 8),
              child: Divider(
                color: Color(0xff94999E),
              ),
            ),
            PaymentTextFieldWidget(),
          ],
        ),
      ),
    );
  }
}
