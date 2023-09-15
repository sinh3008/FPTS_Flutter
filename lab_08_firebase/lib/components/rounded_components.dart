import 'package:flutter/material.dart';
class RoundedButton extends StatelessWidget {
  RoundedButton({
    super.key,
    required this.color,
    required this.text,
    required this.function,
  });

  Color color;
  String text;
  Function() function;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: function,
          minWidth: 200.0,
          height: 42.0,
          child:  Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
