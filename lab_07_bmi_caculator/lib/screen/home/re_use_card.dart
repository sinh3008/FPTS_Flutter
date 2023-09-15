import 'package:flutter/material.dart';

class ReusebleCard extends StatelessWidget {
  ReusebleCard({required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget? cardChild;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15),
        child: cardChild,
        decoration: BoxDecoration(
          // color: Color(0XFF1D1E33),
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
