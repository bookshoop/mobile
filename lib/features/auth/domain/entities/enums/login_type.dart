import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:flutter/material.dart';

enum LoginType {
  kakao,
  naver,
  apple,
  bookforest;

  Color get loginColor {
    switch (this) {
      case LoginType.apple:
        return Colors.black;
      case LoginType.kakao:
        return const Color(0xfffee500);
      case LoginType.naver:
        return const Color(0xff03c75a);
      default:
        return AppThemeData.subGreen;
    }
  }
}
