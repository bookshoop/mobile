import 'package:bookforest/common/utils/size_util.dart';
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
    ),
    fontFamily: 'Inter',
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      labelMedium: TextStyle(
        fontSize: expectSize(15),
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  static const mainColor = Color.fromRGBO(68, 116, 44, 1);
  static const subGreen = Color.fromRGBO(93, 176, 117, 1);
  static const darkGrey = Color.fromRGBO(128, 128, 128, 1);
  static const lightGrey = Color.fromRGBO(217, 217, 217, 1);
  static const backGroundColor = Color.fromRGBO(251, 255, 239, 1);

  // Regular
  static TextStyle regular_10 = TextStyle(
    fontSize: expectSize(10),
  );
  static TextStyle regular_11 = TextStyle(
    fontSize: expectSize(11),
  );
  static TextStyle regular_12 = TextStyle(
    fontSize: expectSize(12),
  );
  static TextStyle regular_13 = TextStyle(
    fontSize: expectSize(12),
  );
  static TextStyle regular_14 = TextStyle(
    fontSize: expectSize(14),
  );
  static TextStyle regular_15 = TextStyle(
    fontSize: expectSize(15),
  );

  // Medium
  static TextStyle medium_10 = TextStyle(
    fontSize: expectSize(10),
  );
  static TextStyle medium_11 = TextStyle(
    fontSize: expectSize(11),
  );
  static TextStyle medium_12 = TextStyle(
    fontSize: expectSize(12),
  );
  static TextStyle medium_13 = TextStyle(
    fontSize: expectSize(13),
  );
  static TextStyle medium_14 = TextStyle(
    fontSize: expectSize(14),
  );
  static TextStyle medium_15 = TextStyle(
    fontSize: expectSize(15),
  );
  static TextStyle medium_16 = TextStyle(
    fontSize: expectSize(16),
  );
  static TextStyle medium_17 = TextStyle(
    fontSize: expectSize(17),
  );
  static TextStyle medium_18 = TextStyle(
    fontSize: expectSize(18),
  );

  // SemiBold
  static TextStyle semiBold_12 = TextStyle(
    fontSize: expectSize(12),
    fontWeight: FontWeight.w600,
  );
  static TextStyle semiBold_14 = TextStyle(
    fontSize: expectSize(14),
    fontWeight: FontWeight.w600,
  );
  static TextStyle semiBold_15 = TextStyle(
    fontSize: expectSize(15),
    fontWeight: FontWeight.w600,
  );
  static TextStyle semiBold_16 = TextStyle(
    fontSize: expectSize(16),
    fontWeight: FontWeight.w600,
  );
  static TextStyle semiBold_17 = TextStyle(
    fontSize: expectSize(17),
    fontWeight: FontWeight.w600,
  );
  static TextStyle semiBold_18 = TextStyle(
    fontSize: expectSize(18),
    fontWeight: FontWeight.w600,
  );

  // Bold
  static TextStyle bold_10 = TextStyle(
    fontSize: expectSize(10),
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold_11 = TextStyle(
    fontSize: expectSize(11),
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold_12 = TextStyle(
    fontSize: expectSize(12),
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold_14 = TextStyle(
    fontSize: expectSize(14),
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold_15 = TextStyle(
    fontSize: expectSize(15),
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold_16 = TextStyle(
    fontSize: expectSize(16),
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold_18 = TextStyle(
    fontSize: expectSize(18),
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold_20 = TextStyle(
    fontSize: expectSize(20),
    fontWeight: FontWeight.w700,
  );
}
