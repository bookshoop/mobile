import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;

  /// 버튼 text 스타일
  final TextStyle? textStyle;

  /// 없으면 subGreen
  final Color? color;

  /// expect 제외한 숫자만 입력
  final double? height;

  /// expect 제외한 숫자만 입력
  final double? width;

  final VoidCallback? onTap;

  const CustomButton({
    super.key,
    this.color,
    required this.text,
    this.textStyle,
    this.height,
    this.width,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width != null ? width!.size : width,
        height: height != null ? height!.size : height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.size),
          color: color ?? AppThemeData.subGreen,
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: textStyle ??
              AppThemeData.regular_15.copyWith(
                color: Colors.white,
                height: 1.2,
              ),
        ),
      ),
    );
  }
}
