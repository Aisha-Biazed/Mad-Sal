import 'package:flutter/material.dart';

import 'hex_color.dart';

const _lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    // primary: Color(0xFFa1c3fc),
    primary: Color(0xff15AB98),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xff121A25),
    onSecondary: Color(0xFFFFFFFF),
    error: Color(0xFFBA1A1A),
    onError: Color(0xFFFFFFFF),
    background: Color(0xFFFCFDF6),
    onBackground: Color(0xFF1A1C18),
    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFF1A1C18),
    outline: Color(0xFF121A25),
    onSurfaceVariant: Color(0xFFBEBEBE),
    onPrimaryContainer: Color(0xFFF1F1F1));

class ColorManager {
  static Color primary = HexColor('#15AB98');
  static Color secondaryPrim = HexColor('#227B70');
  static Color ThirdPrim = HexColor('#44C6B5');
  static Color primaryContainer = HexColor('#F1F1F1');
  static Color mainGrey = HexColor('#C6C6C6');
  static Color greyCard = HexColor('#FAF3F3');
  static Color greyIcon = HexColor('#938D8D');
  static Color borderGrey = HexColor('#D9D9D9');
  static Color white = HexColor('#FFFFFF');
  static Color dark = HexColor('#000000');
  static Color grey = HexColor('#6A6A6A');
  static Color hint = HexColor('#807A7A');
  static Color purple = HexColor('#E0E1EF');
  static Color secondaryGrey = HexColor('#F5F5F5');
  static Color outline = HexColor('#121A25');
  static Color onSurfaceVariant = HexColor('#BEBEBE');
  static Color surface = HexColor('#FFFFFF');
  static Color onPrimaryContainer = HexColor('#F1F1F1');
  static Color secondary = HexColor('#121A25');
  static Color green = HexColor('#AF50FF');
  static Color red = HexColor('#BE1313');
}
