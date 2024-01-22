import 'package:bookforest/common/utils/size_util.dart';
import 'package:flutter/material.dart';

class EmptySpace extends StatelessWidget {
  final double? height;
  final double? width;

  const EmptySpace({
    super.key,
    this.width,
    this.height,
  }) : assert(height != null || width != null);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: expectSize(width ?? 0),
      height: expectSize(height ?? 0),
    );
  }
}
