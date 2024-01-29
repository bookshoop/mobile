// ignore_for_file: overridden_fields

import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class FloatinButtonChild extends SpeedDialChild {
  final IconData iconData;
  @override
  final Widget child;
  @override
  final Widget labelWidget;

  FloatinButtonChild({
    required super.label,
    super.onTap,
    required this.iconData,
    super.backgroundColor = AppThemeData.mainColor,
    super.shape = const CircleBorder(),
    super.elevation = 3,
    super.foregroundColor = Colors.white,
  })  : child = Icon(
          iconData,
          size: 20.size,
        ),
        labelWidget = Container(
          padding: EdgeInsets.symmetric(
            horizontal: 6.size,
            vertical: 5.size,
          ),
          decoration: BoxDecoration(
            color: AppThemeData.mainColor,
            borderRadius: BorderRadius.circular(8.size),
          ),
          child: Text(
            label!,
            style: AppThemeData.regular_11.copyWith(
              color: Colors.white,
            ),
          ),
        );
}
