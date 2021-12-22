import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.transparent,
  double radius = 3.0,
  required Function function,
  required Icon icon
}) => IconButton(
  onPressed: () => function,
  icon: icon,
);
