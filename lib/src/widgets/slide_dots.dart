import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoop_binge/src/helpers/HexColor.dart';

class SlideDots extends StatelessWidget {
  bool isActive;
  String color;

  SlideDots(this.isActive, this.color);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 3.3),
      height: isActive ? 10 : 6,
      width: isActive ? 10 : 6,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.grey,
        border: isActive
            ? Border.all(
                color: HexColor(color),
                width: 2.0,
              )
            : Border.all(
                color: Colors.transparent,
                width: 1,
              ),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
