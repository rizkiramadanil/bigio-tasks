import 'package:flutter/material.dart';

const Color clrPrimary = Color(0xFF595959);
const Color clrSecondary = Color(0xFF262626);
const Color clrTertiary = Color(0xFFA6A6A6);
const Color clrPrimaryText = Color(0xFF262626);
const Color clrSecondaryText = Colors.white;

const kColorScheme = ColorScheme(
  primary: clrPrimary,
  onPrimary: Colors.white,
  secondary: clrSecondary,
  onSecondary: Colors.white,
  error: Colors.red,
  onError: Colors.white,
  background: Colors.white,
  onBackground: clrPrimary,
  surface: Colors.black,
  onSurface: clrSecondary,
  brightness: Brightness.light,
);
