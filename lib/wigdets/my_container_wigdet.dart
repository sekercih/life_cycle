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
    double sizeW = MediaQuery.of(context).size.width;
    double sizeH = MediaQuery.of(context).size.height;

    double margin = 6;
    return GestureDetector(
      onTap: () {
        sonPress == null ? () {} : sonPress!();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
        height: height ?? sizeH * 1 - margin,
        width: width ?? sizeW * 0.33 - margin * 2,
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
