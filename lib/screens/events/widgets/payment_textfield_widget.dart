import 'package:flutter/material.dart';
import 'package:newproject/utils/buttons.dart';
import 'package:newproject/utils/colors.dart';
import 'package:newproject/utils/controllers.dart';
import 'package:intl/intl.dart';

class PaymentTextFieldWidget extends StatefulWidget {
  const PaymentTextFieldWidget({super.key});

  @override
  State<PaymentTextFieldWidget> createState() => _PaymentTextFieldWidgetState();
}

class _PaymentTextFieldWidgetState extends State<PaymentTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nom du titulaire de la carte",
                style: TextStyle(
                    color: Color(0xffF9FAFB),
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),
                controller: cardName,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xff32373E),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: mainTextFormColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: mainTextFormColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: mainTextFormColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: mainTextFormColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: "Entrer le nom",
                  hintStyle: TextStyle(color: Color(0xff949494)),
                ),
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
                "Numéro de carte",
                style: TextStyle(
                    color: Color(0xffF9FAFB),
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),
                controller: cardNumber,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/Visa.png",
                      width: 35,
                      height: 24,
                    ),
                  ),
                  border: InputBorder.none,
                  fillColor: Color(0xff32373E),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: mainTextFormColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: mainTextFormColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: mainTextFormColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: mainTextFormColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: "Entrer le nom",
                  hintStyle: TextStyle(color: Color(0xff949494)),
                ),
              )
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date d’expiration",
                      style: TextStyle(
                          color: Color(0xffF9FAFB),
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onTap: () {
                        setDate(context, cardDate);
                      },
                      style: TextStyle(color: Colors.white),
                      controller: cardDate,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Color(0xff32373E),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: mainTextFormColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: mainTextFormColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: mainTextFormColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: mainTextFormColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        hintText: "MMYY",
                        hintStyle: TextStyle(color: Color(0xff949494)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CVV",
                      style: TextStyle(
                          color: Color(0xffF9FAFB),
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      controller: cvv,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Color(0xff32373E),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: mainTextFormColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: mainTextFormColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: mainTextFormColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: mainTextFormColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        hintText: "000",
                        hintStyle: TextStyle(color: Color(0xff949494)),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        CheckboxListTile(
          activeColor: Color(0xff474F57),
          controlAffinity: ListTileControlAffinity.leading,
          title: const Text(
            'Se rappeler de ma carte',
            style: TextStyle(color: Colors.white),
          ),
          value: true,
          onChanged: (bool? value) {},
        ),
        SizedBox(
          height: 20,
        ),
        SaveButton(title: "Pay", onTap: () {})
      ],
    );
  }

  setDate(context, TextEditingController controller) {
    showDatePicker(
      context: context,
      initialDate: controller.text.isNotEmpty
          ? DateFormat('dd/MM/yyyy').parse(controller.text)
          : DateTime.now(),
      firstDate: DateTime(1950, 01, 01),
      lastDate: DateTime(2100, 01, 01),
    ).then((value) {
      if (value != null) {
        controller.text = DateFormat('dd/MM/yyyy').format(value);
      }
    });
  }
}
