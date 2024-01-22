import 'dart:math';

import 'package:flutter/material.dart';

double _expectWidth(double width) => deviceWidth / 360 * width;
double _expectHeight(double height) => deviceHeight / 640 * height;
double expectSize(double size) => min(_expectWidth(size), _expectHeight(size));
// double expectSize(double size) => size;

double topPadding = 0.0;
double bottomPadding = 0.0;
double deviceHeight = 0.0;
double deviceWidth = 0.0;

Future<dynamic> getMediaHeight(BuildContext context) async {
  topPadding = MediaQuery.of(context).padding.top;
  bottomPadding = MediaQuery.of(context).padding.bottom;
  deviceHeight = MediaQuery.of(context).size.height;
  deviceWidth = MediaQuery.of(context).size.width;
}
