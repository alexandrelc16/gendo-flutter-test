import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Color(0xff24292e),
  accentColor: Color(0xffe36209),
  colorScheme: ColorScheme(
    background: Colors.white,
    brightness: Brightness.light,
    error: Colors.red,
    onBackground: Color(0xff282d32),
    onError: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Color(0xff282d32),
    primary: Color(0xff24292e),
    primaryVariant: Color(0xff586069),
    secondary: Color(0xffe36209),
    secondaryVariant: Color(0xffe36209),
    surface: Color(0xffd8d8d8),
  ),
  appBarTheme: AppBarTheme(
    textTheme: TextTheme(
      headline6: TextStyle(
        fontSize: 20,
        fontFamily: 'OpenSans',
      ),
    ),
  ),
  chipTheme: ChipThemeData(
    backgroundColor: Color(0xffd8d8d8).withOpacity(0.73),
    brightness: Brightness.light,
    disabledColor: Color(0xffd8d8d8).withOpacity(0.33),
    labelPadding: const EdgeInsets.symmetric(horizontal: 4),
    labelStyle: TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Color(0xff586069),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 4),
    secondaryLabelStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Color(0xff586069),
    ),
    secondarySelectedColor: Color(0xffd8d8d8),
    selectedColor: Color(0xffd8d8d8),
    shape: StadiumBorder(),
  ),
  dividerTheme: DividerThemeData(
    color: Color(0xffe1e4e8),
    thickness: 1,
    space: 32,
  ),
  errorColor: Colors.red,
  fontFamily: 'OpenSans',
  iconTheme: IconThemeData(
    color: Color(0xff5c646d),
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.fromLTRB(12, 26, 12, 0),
    hintStyle: const TextStyle(
      color: Color(0xff999999),
      fontFamily: 'OpenSans',
      fontSize: 16,
    ),
    isDense: true,
    labelStyle: const TextStyle(
      color: Color(0xff24292e),
      fontFamily: 'OpenSans',
      fontSize: 16,
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffcccccc)),
      borderRadius: BorderRadius.circular(4),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffcccccc)),
      borderRadius: BorderRadius.circular(4),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey[200]),
      borderRadius: BorderRadius.circular(4),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey[400]),
      borderRadius: BorderRadius.circular(4),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.circular(4),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.circular(4),
    ),
  ),
  scaffoldBackgroundColor: Colors.white,
  tabBarTheme: TabBarTheme(
    labelColor: Color(0xff282d32),
    labelStyle: TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    labelPadding: EdgeInsets.zero,
    unselectedLabelStyle: TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 18,
      fontWeight: FontWeight.normal,
      color: Color(0xff586069),
    ),
  ),
  textTheme: TextTheme(
    subtitle1: TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 14,
      height: 1,
      color: Color(0xff666666),
    ),
    subtitle2: TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 12,
      height: 1,
      color: Color(0xff5c646d),
    ),
    headline6: TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 20,
      fontWeight: FontWeight.bold,
      height: 1,
      color: Color(0xff3498db),
    ),
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
