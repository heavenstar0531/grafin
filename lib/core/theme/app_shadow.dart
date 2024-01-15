import 'package:flutter/material.dart';

class AppShadow {
  AppShadow._();

  static List<BoxShadow>? shadowLg = const [
    BoxShadow(
      blurRadius: 6,
      offset: Offset(0, 4),
      spreadRadius: -2,
      color: Color.fromRGBO(16, 24, 40, 0.03),
    ),
    BoxShadow(
      blurRadius: 16,
      offset: Offset(0, 12),
      spreadRadius: -4,
      color: Color.fromRGBO(16, 24, 40, 0.08),
    ),
  ];

  static List<BoxShadow>? shadowXs = const [
    BoxShadow(
      blurRadius: 2,
      offset: Offset(0, 1),
      spreadRadius: 0,
      color: Color.fromRGBO(16, 24, 40, 0.05),
    ),
  ];
}
