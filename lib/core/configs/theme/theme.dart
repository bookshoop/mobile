import 'package:bookforest/core/utils/size_util.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  static final theme = ThemeData(
    useMaterial3: true,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: mainColor,
      background: Colors.white,
      onBackground: Colors.white,
    ),
    fontFamily: 'Inter',
    scaffoldBackgroundColor: Colors.white,
  );

  static const mainColor = Color.fromRGBO(68, 116, 44, 1);
  static const subGreen = Color.fromRGBO(93, 176, 117, 1);
  static const darkGrey = Color.fromRGBO(128, 128, 128, 1);
  static const lightGrey = Color.fromRGBO(217, 217, 217, 1);
  static const backGroundColor = Color.fromRGBO(251, 255, 239, 1);

  // Regular
  static TextStyle regular_10 = TextStyle(
    fontSize: 10.size,
  );
  static TextStyle regular_11 = TextStyle(
    fontSize: 11.size,
  );
  static TextStyle regular_12 = TextStyle(
    fontSize: 12.size,
  );
  static TextStyle regular_13 = TextStyle(
    fontSize: 12.size,
  );
  static TextStyle regular_14 = TextStyle(
    fontSize: 14.size,
  );
  static TextStyle regular_15 = TextStyle(
    fontSize: 15.size,
  );

  // Medium
  static TextStyle medium_10 = TextStyle(
    fontSize: 10.size,
  );
  static TextStyle medium_11 = TextStyle(
    fontSize: 11.size,
  );
  static TextStyle medium_12 = TextStyle(
    fontSize: 12.size,
  );
  static TextStyle medium_13 = TextStyle(
    fontSize: 13.size,
  );
  static TextStyle medium_14 = TextStyle(
    fontSize: 14.size,
  );
  static TextStyle medium_15 = TextStyle(
    fontSize: 15.size,
  );
  static TextStyle medium_16 = TextStyle(
    fontSize: 16.size,
  );
  static TextStyle medium_17 = TextStyle(
    fontSize: 17.size,
  );
  static TextStyle medium_18 = TextStyle(
    fontSize: 18.size,
  );

  // SemiBold
  static TextStyle semiBold_12 = TextStyle(
    fontSize: 12.size,
    fontWeight: FontWeight.w600,
  );
  static TextStyle semiBold_14 = TextStyle(
    fontSize: 14.size,
    fontWeight: FontWeight.w600,
  );
  static TextStyle semiBold_15 = TextStyle(
    fontSize: 15.size,
    fontWeight: FontWeight.w600,
  );
  static TextStyle semiBold_16 = TextStyle(
    fontSize: 16.size,
    fontWeight: FontWeight.w600,
  );
  static TextStyle semiBold_17 = TextStyle(
    fontSize: 17.size,
    fontWeight: FontWeight.w600,
  );
  static TextStyle semiBold_18 = TextStyle(
    fontSize: 18.size,
    fontWeight: FontWeight.w600,
  );

  // Bold
  static TextStyle bold_10 = TextStyle(
    fontSize: 10.size,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold_11 = TextStyle(
    fontSize: 11.size,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold_12 = TextStyle(
    fontSize: 12.size,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold_14 = TextStyle(
    fontSize: 14.size,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold_15 = TextStyle(
    fontSize: 15.size,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold_16 = TextStyle(
    fontSize: 16.size,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold_18 = TextStyle(
    fontSize: 18.size,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold_20 = TextStyle(
    fontSize: 20.size,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold_24 = TextStyle(
    fontSize: 24.size,
    fontWeight: FontWeight.w700,
  );
}
