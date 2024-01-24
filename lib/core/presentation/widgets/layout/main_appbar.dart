import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/features/push/presentation/views/push_screen.dart';
import 'package:bookforest/features/user/presentation/views/my_page_screen.dart';
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
          height: 60.size + SizeUtil.topPadding,
          padding: EdgeInsets.only(
            top: SizeUtil.topPadding,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/common/appbar_logo.png',
                width: 80.size,
                height: 40.size,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      context.pushNamed(PushScreen.routeName);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 5.size),
                      child: Icon(
                        Icons.notifications_none,
                        size: 26.size,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.pushNamed(MyPageScreen.routeName);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.size),
                      child: SvgPicture.asset(
                        'assets/images/common/profile.svg',
                        width: 26.size,
                        height: 26.size,
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
