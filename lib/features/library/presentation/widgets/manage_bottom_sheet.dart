import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/library/presentation/views/library_manage_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ManageBottomSheet extends StatelessWidget {
  const ManageBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 30.size,
        horizontal: 20.size,
      ),
      child: Wrap(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  context.pop();
                  context.pushNamed(LibraryManageScreen.routeName);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '서재관리',
                      style: AppThemeData.medium_18,
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      size: 26.size,
                    ),
                  ],
                ),
              ),
              EmptySpace(
                height: 15.size,
              ),
              InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  context.pop();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '도서관리',
                      style: AppThemeData.medium_18,
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      size: 26.size,
                    ),
                  ],
                ),
              ),
              EmptySpace(
                height: 15.size,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
