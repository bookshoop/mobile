// ignore_for_file: overridden_fields

import 'package:bookforest/common/configs/theme/theme.dart';
import 'package:bookforest/common/utils/size_util.dart';
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
          size: expectSize(20),
        ),
        labelWidget = Container(
          padding: EdgeInsets.symmetric(
            horizontal: expectSize(6),
            vertical: expectSize(5),
          ),
          decoration: BoxDecoration(
            color: AppThemeData.mainColor,
            borderRadius: BorderRadius.circular(expectSize(8)),
          ),
          child: Text(
            label!,
            style: AppThemeData.regular_11.copyWith(
              color: Colors.white,
            ),
          ),
        );
}
