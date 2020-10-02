import 'package:flutter/cupertino.dart';
import 'package:hello/common_widget/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton({
    String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  }) : super(
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 16.0),
          ),
          height: 50.0,
          color: color,
          borderRadius: 8.0,
          onPressed: onPressed,
        );
}
