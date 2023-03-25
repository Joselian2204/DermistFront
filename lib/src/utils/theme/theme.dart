import 'package:flutter/material.dart';

class DermistAppTheme{

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Color(0xFF1D566E),
      cursorColor: Color(0xFF1D566E)
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
  },

  ),
    //textTheme: DermistTextTheme.lightTextTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    //textTheme: DermistTextTheme.lightTextTheme,
  );
}