import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildButton({
  required String text,
  required Color color,
  required VoidCallback onPressed,
}) {
  return Material(
    elevation: 5.0,
    color: color,
    borderRadius: BorderRadius.circular(50),
    child: MaterialButton(
      onPressed: onPressed,
      minWidth: 200.0,
      height: 50.0,
      child: Text(text),
    ),
  );
}
