import 'package:bookforest/common/utils/size_util.dart';
import 'package:bookforest/common/configs/theme/theme.dart';
import 'package:bookforest/features/push/presentation/views/push_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class MainAppbar extends StatelessWidget {
  final VoidCallback onProfileTap;

  const MainAppbar({
    super.key,
    required this.onProfileTap,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'appbar',
      child: Material(
        child: Container(
          height: expectSize(60) + topPadding,
          padding: EdgeInsets.only(
            top: topPadding,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/common/appbar_logo.png',
                width: expectSize(80),
                height: expectSize(40),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      context.pushNamed(PushScreen.routeName);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: expectSize(5)),
                      child: Icon(
                        Icons.notifications_none,
                        size: expectSize(26),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: onProfileTap,
                    child: Padding(
                      padding: EdgeInsets.only(left: expectSize(5)),
                      child: SvgPicture.asset(
                        'assets/images/common/profile.svg',
                        width: expectSize(26),
                        height: expectSize(26),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
