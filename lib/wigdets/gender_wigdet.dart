import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CenderWigdet extends StatelessWidget {
  final String gender;
  final IconData icon;
  const CenderWigdet({
    Key? key,
    this.gender = "KADIN",
    this.icon = FontAwesomeIcons.venus,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 50,
          color: Colors.black,
        ),
        SizedBox(
          height: 10,
        ),
        Text(gender,
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ))
      ],
    );
  }
}
