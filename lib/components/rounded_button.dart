import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  late final String buttonText;
  late final Color buttonColor;
  late final VoidCallback onTap;
  RoundedButton(
      {required this.buttonText,
      required this.buttonColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onTap,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
