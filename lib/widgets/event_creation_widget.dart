import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:newproject/screens/preview/preview_event.dart';
import 'package:newproject/utils/buttons.dart';
import 'package:newproject/utils/colors.dart';
import 'package:newproject/utils/controllers.dart';
import 'package:newproject/utils/textformfield.dart';

class EventCreationWidget extends StatefulWidget {
  const EventCreationWidget({super.key});

  @override
  State<EventCreationWidget> createState() => _EventCreationWidgetState();
}

class _EventCreationWidgetState extends State<EventCreationWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/Cards.png"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Titre du évènement",
                style: TextStyle(
                    color: Color(0xffF9FAFB),
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormInputField(
                textInputType: TextInputType.text,
                hintText: "Entrer le titre",
                controller: titleEventController,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Date",
                style: TextStyle(
                    color: Color(0xffF9FAFB),
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormInputField(
                onTap: () {
                  setDate(dateEventController);
                },
                suIcon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Color(0xffF9FAFB),
                ),
                textInputType: TextInputType.datetime,
                hintText: "DD/MM/YYYY",
                controller: dateEventController,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Location",
                style: TextStyle(
                    color: Color(0xffF9FAFB),
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormInputField(
                suIcon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Color(0xffF9FAFB),
                ),
                textInputType: TextInputType.streetAddress,
                hintText: "Location",
                controller: eventLocation,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Description (300 mots)",
                style: TextStyle(
                    color: Color(0xffF9FAFB),
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: eventDescriptioncController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Entrer description",
                    hintStyle: TextStyle(color: Color(0xff949494)),
                    fillColor: mainTextFormColor,
                    filled: true,
                    border: InputBorder.none),
                maxLines: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                          color: Color(0xffF9FAFB),
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormInputField(
                            suIcon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xffF9FAFB),
                            ),
                            textInputType: TextInputType.streetAddress,
                            hintText: "Payment",
                            controller: paymentController,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextFormInputField(
                            preIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                margin: EdgeInsets.only(top: 7),
                                child: Text(
                                  "\$",
                                  style: TextStyle(color: textColor),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            suIcon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xffF9FAFB),
                            ),
                            textInputType: TextInputType.streetAddress,
                            hintText: "0.00",
                            controller: moneyController,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Neighborhood",
                      style: TextStyle(
                          color: Color(0xffF9FAFB),
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormInputField(
                      suIcon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                      textInputType: TextInputType.text,
                      hintText: "Select Your borough",
                      controller: eventneighborControllers,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "University",
                      style: TextStyle(
                          color: Color(0xffF9FAFB),
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormInputField(
                      suIcon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                      textInputType: TextInputType.text,
                      hintText: "Select Your university",
                      controller: eventstudentUniversityControllers,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Age",
                      style: TextStyle(
                          color: Color(0xffF9FAFB),
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormInputField(
                            textInputType: TextInputType.streetAddress,
                            hintText: "18",
                            controller: startAge,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextFormInputField(
                            suIcon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xffF9FAFB),
                            ),
                            textInputType: TextInputType.streetAddress,
                            hintText: "25",
                            controller: endAge,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //Two Sectiosn are Left

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Choisis ta catégorie",
                      style: TextStyle(
                          color: Color(0xffF9FAFB),
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormInputField(
                      suIcon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                      textInputType: TextInputType.text,
                      hintText: "Category",
                      controller: category,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Public",
                      style: TextStyle(
                          color: Color(0xffF9FAFB),
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormInputField(
                      suIcon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                      textInputType: TextInputType.text,
                      hintText: "Public",
                      controller: publicController,
                    )
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlineButton(
                      title: "Preview",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => PreviewScreen()));
                      })),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SaveButton(title: "Publish", onTap: alert)),
            ],
          ),
        ),
      ],
    );
  }

  void setDate(TextEditingController dateEventController) {
    showDatePicker(
      context: context,
      initialDate: dateEventController.text.isNotEmpty
          ? DateFormat('dd/MM/yyyy').parse(dateEventController.text)
          : DateTime.now(),
      firstDate: DateTime(1950, 01, 01),
      lastDate: DateTime(2100, 01, 01),
    ).then((value) {
      if (value != null) {
        dateEventController.text = DateFormat('dd/MM/yyyy').format(value);
      }
    });
  }

  void alert() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xff21252A),
          title: Text(
            'CONGRATULATIONS!',
            style: TextStyle(
                color: textColor, fontSize: 20, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Image.asset('assets/Group.png'),
                SizedBox(
                  height: 9,
                ),
                Text(
                  'You have publish the event successfully!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            SaveButton(
                title: "Close",
                onTap: () {
                  Navigator.pop(context);
                })
          ],
        );
      },
    );
  }
}
