import 'package:flutter/material.dart';

class CustomTopLogoBanner extends StatelessWidget {
  final IconData icon;
  final String title;
  const CustomTopLogoBanner(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 100,
        ), //This is how you add an icon
        SizedBox(
          height: 50,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
