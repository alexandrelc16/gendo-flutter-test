import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.white,
  accentColor: Color(0xffe36209),
  colorScheme: ColorScheme(
    background: Color(0xff24292e),
    brightness: Brightness.dark,
    error: Colors.red,
    onBackground: Colors.white,
    onError: Colors.white,
    onPrimary: Color(0xff24292e),
    onSecondary: Color(0xff24292e),
    onSurface: Colors.white,
    primary: Colors.white,
    primaryVariant: Colors.grey[100],
    secondary: Color(0xffe36209),
    secondaryVariant: Color(0xffe36209),
    surface: Color(0xff24292e),
  ),
  appBarTheme: AppBarTheme(
    color: Colors.grey[900],
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
    color: Colors.grey[600],
    thickness: 1,
    space: 32,
  ),
  errorColor: Colors.red,
  fontFamily: 'OpenSans',
  iconTheme: IconThemeData(
    color: Colors.grey[100],
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.fromLTRB(12, 26, 12, 0),
    hintStyle: const TextStyle(
      color: Color(0xff999999),
      fontFamily: 'OpenSans',
      fontSize: 16,
    ),
    isDense: true,
    labelStyle: TextStyle(
      color: Colors.grey[100],
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
      borderSide: BorderSide(color: Colors.grey[500]),
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
  scaffoldBackgroundColor: Colors.grey[850],
  tabBarTheme: TabBarTheme(
    labelColor: Colors.white,
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
      color: Colors.grey[500],
    ),
  ),
  textTheme: TextTheme(
    subtitle1: TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 14,
      height: 1,
      color: Colors.grey[300],
    ),
    subtitle2: TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 12,
      height: 1,
      color: Colors.grey[300],
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
