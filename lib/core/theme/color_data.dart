import 'package:flutter/material.dart';

class ColorData {
  ColorData._();

  static const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
    50: Color(0xFFE1EDF4),
    100: Color(0xFFB3D2E3),
    200: Color(0xFF81B5D1),
    300: Color(0xFF4E97BE),
    400: Color(0xFF2880B0),
    500: Color(_primaryPrimaryValue),
    600: Color(0xFF02629A),
    700: Color(0xFF015790),
    800: Color(0xFF014D86),
    900: Color(0xFF013C75),
  });
  static const int _primaryPrimaryValue = 0xFF026AA2;

  static const MaterialColor baseWhite = MaterialColor(
    _baseWhiteValue,
    <int, Color>{
      50: Color(_baseWhiteValue),
      100: Color(_baseWhiteValue),
      200: Color(_baseWhiteValue),
      300: Color(_baseWhiteValue),
      400: Color(_baseWhiteValue),
      500: Color(_baseWhiteValue),
      600: Color(_baseWhiteValue),
      700: Color(_baseWhiteValue),
      800: Color(_baseWhiteValue),
      900: Color(_baseWhiteValue),
    },
  );
  static const int _baseWhiteValue = 0xffffffff;

  static const MaterialColor baseBlack = MaterialColor(
    _baseBlackValue,
    <int, Color>{
      50: Color(_baseBlackValue),
      100: Color(_baseBlackValue),
      200: Color(_baseBlackValue),
      300: Color(_baseBlackValue),
      400: Color(_baseBlackValue),
      500: Color(_baseBlackValue),
      600: Color(_baseBlackValue),
      700: Color(_baseBlackValue),
      800: Color(_baseBlackValue),
      900: Color(_baseBlackValue),
    },
  );
  static const int _baseBlackValue = 0xff000000;

  static const MaterialColor error = MaterialColor(
    _errorValue,
    <int, Color>{
      50: Color(0xfffef3f2),
      100: Color(0xfffee4e2),
      200: Color(0xfffecdca),
      300: Color(0xfffda29b),
      400: Color(0xfff97066),
      500: Color(_errorValue),
      600: Color(0xffd92d20),
      700: Color(0xffb42318),
      800: Color(0xff912018),
      900: Color(0xff7a271a),
    },
  );
  static const int _errorValue = 0xfff04438;

  static const MaterialColor orangeDark = MaterialColor(
    _orangeDarkValue,
    <int, Color>{
      50: Color(0xfffff4ed),
      100: Color(0xffffe6d5),
      200: Color(0xffffd6ae),
      300: Color(0xffff9c66),
      400: Color(0xffff692e),
      500: Color(_orangeDarkValue),
      600: Color(0xffe62e05),
      700: Color(0xffbc1b06),
      800: Color(0xff97180c),
      900: Color(0xff771a0d),
    },
  );
  static const int _orangeDarkValue = 0xffff4405;

  static const MaterialColor gray = MaterialColor(
    _grayPrimaryValue,
    <int, Color>{
      50: Color(0xfff9fafb),
      100: Color(0xfff2f4f7),
      200: Color(0xffeaecf0),
      300: Color(0xffd0d5dd),
      400: Color(0xff98a2b3),
      500: Color(_grayPrimaryValue),
      600: Color(0xff475467),
      700: Color(0xff344054),
      800: Color(0xff1d2939),
      900: Color(0xff101828),
    },
  );
  static const int _grayPrimaryValue = 0xff667085;

  static const MaterialColor grayBlue = MaterialColor(
    _grayBlueValue,
    <int, Color>{
      50: Color(0xfff8f9fc),
      100: Color(0xffeaecf5),
      200: Color(0xffd5d9eb),
      300: Color(0xffb3b8db),
      400: Color(0xff717bbc),
      500: Color(_grayBlueValue),
      600: Color(0xff3e4784),
      700: Color(0xff363f72),
      800: Color(0xff293056),
      900: Color(0xff101323),
    },
  );
  static const int _grayBlueValue = 0xff4e5ba6;
}
