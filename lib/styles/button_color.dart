import 'package:flutter/material.dart';

class ButtonColor extends MaterialStateColor {
  ButtonColor() : super(0xff277ADB);

  static const Color _defaultColor = Color(0xff277ADB);
  static const Color _disabledColor = Color(0xffC5C5C5);

  @override
  Color resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return _disabledColor;
    }
    return _defaultColor;
  }
}
