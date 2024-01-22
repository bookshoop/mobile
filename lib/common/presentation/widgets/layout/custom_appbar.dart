import 'package:bookforest/common/configs/theme/theme.dart';
import 'package:bookforest/common/utils/size_util.dart';
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
          height: expectSize(60) + topPadding,
          padding: EdgeInsets.only(
            top: topPadding + expectSize(10),
            left: expectSize(24),
            right: expectSize(24),
          ),
          decoration: BoxDecoration(
            color: AppThemeData.mainColor,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(
                expectSize(10),
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
                    width: expectSize(24),
                    height: expectSize(24),
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
