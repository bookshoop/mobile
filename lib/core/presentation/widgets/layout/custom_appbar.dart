import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class CustomAppbar extends StatelessWidget {
  final String? title;
  final Widget? icon;

  const CustomAppbar({
    super.key,
    this.title,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'appbar',
      child: Material(
        child: Container(
          height: 60.size + SizeUtil.topPadding,
          padding: EdgeInsets.only(
            top: SizeUtil.topPadding + 10.size,
            left: 24.size,
            right: 24.size,
          ),
          decoration: BoxDecoration(
            color: AppThemeData.mainColor,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(
                10.size,
              ),
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: context.pop,
                  child: SvgPicture.asset(
                    'assets/images/icon/arrow_back.svg',
                    width: 24.size,
                    height: 24.size,
                  ),
                ),
              ),
              if (title != null)
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    title!,
                    style: AppThemeData.bold_16.copyWith(
                      color: Colors.white,
                      height: 1.2,
                    ),
                  ),
                ),
              if (icon != null)
                Align(
                  alignment: Alignment.centerRight,
                  child: icon!,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
