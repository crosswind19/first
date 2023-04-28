import 'package:first/pages/auth/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CUstomBottomWording extends StatelessWidget {
  final String descriptionText;
  final String navigationText;
  final Function()? navigateAction;
  const CUstomBottomWording(
      {super.key,
      required this.descriptionText,
      required this.navigationText,
      this.navigateAction});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          descriptionText,
          style: TextStyle(color: Colors.grey),
        ),
        GestureDetector(
          child: Text(
            navigationText,
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          onTap: navigateAction,
        )
      ],
    );
  }
}
