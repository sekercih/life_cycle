import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color? renk;
  final Widget? child;
  final Function? sonPress;

  MyContainer({
    this.renk = Colors.white,
    this.child,
    this.sonPress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          sonPress() {}
        },
        child: Container(
          child: child,
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: renk,
          ),
        ),
      ),
    );
  }
}
