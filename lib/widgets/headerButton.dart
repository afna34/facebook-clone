import 'package:flutter/material.dart';

Widget headerButton({
  required String buttonText,
  required IconData buttonIcon,
  required void Function() buttonAction,
  required Color buttonColor,
  required Color buttonTextColor,
}) {
  return TextButton.icon(
    label: Text(
      buttonText,
      style: TextStyle(color: buttonTextColor),
    ),
    onPressed: buttonAction,
    icon: Icon(
      buttonIcon,
      color: buttonColor,
    ),
  );
}
