import 'dart:ffi';

import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color? renk;
  final Widget? child;
  final Function? sonPress;
  final double? height;
  final double? width;

  MyContainer({
    this.renk,
    this.child,
    this.sonPress,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double margin = 12;
    return GestureDetector(
      onTap: () {
        sonPress == null ? () {} : sonPress!();
      },
      child: Container(
        height: height ?? size.height * 0.5 - margin,
        width: width ?? size.width * 0.5 - margin * 2,
        child: child,
        margin: EdgeInsets.all(margin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: renk ?? Colors.white,
        ),
      ),
    );
  }
}
