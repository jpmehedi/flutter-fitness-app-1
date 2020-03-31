import 'package:flutter/material.dart';
import 'constraint.dart';


class Indicator extends StatelessWidget {
  final isActive;
  Indicator(this.isActive);
  @override
  Widget build(BuildContext context) {
    return isActive == true
        ? Container(
            width: 16 * 4.0,
            height: 16,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              shape: BoxShape.rectangle,
              color: orangeColor,
            ),
          )
        : Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          );
  }
}
