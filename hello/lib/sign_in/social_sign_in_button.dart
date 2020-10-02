import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/common_widget/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
   @required String assetName,
   @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  }) : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(assetName),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: textColor),
              ),
              Opacity(
                opacity: 0,
                child: Image.asset('images/google-logo.png'),
              )
            ],
          ),
          color: color,
          onPressed: onPressed,
        );
}
