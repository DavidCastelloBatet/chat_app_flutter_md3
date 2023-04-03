import 'package:flutter/material.dart';

const _customColor = Color(0xFF49149F);

const List<Color> _colorTheme = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.red,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(
          selectedColor >= 0 && selectedColor <= _colorTheme.length - 1,
          'Colores deben ser entre 0 y ${_colorTheme.length}',
        );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selectedColor],
      //brightness: Brightness.dark,
    );
  }
}
