import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildButton({
  required String label,
  required Color bgColor,
  required VoidCallback action,
}) {
  return Material(
    elevation: 5.0,
    color: bgColor,
    borderRadius: BorderRadius.circular(50),
    child: MaterialButton(
      onPressed: action,
      minWidth: 200.0,
      height: 50.0,
      child: Text(label),
    ),
  );
}
