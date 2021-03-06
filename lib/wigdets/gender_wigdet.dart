import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_cycle_application/constants.dart';

class CenderWigdet extends StatelessWidget {
  final String gender;
  final IconData icon;
  final Color color;
  const CenderWigdet({
    Key? key,
    this.gender = "KADIN",
    this.icon = FontAwesomeIcons.venus,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 40,
          color: Colors.black,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(gender, style: metinStyle)
      ],
    );
  }
}
