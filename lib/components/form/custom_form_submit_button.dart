import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomFormSubmitButton extends StatelessWidget {
  final String buttonText;
  final Function()? buttonAction;

  const CustomFormSubmitButton(
      {super.key, required this.buttonText, this.buttonAction});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        height: 50,
        width: double
            .infinity, //take as much space as container according to the screensize
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.blueAccent),
          ),
          child: Text(buttonText),
          onPressed: buttonAction,
        ));
  }
}
