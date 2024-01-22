import 'package:bookforest/common/configs/theme/theme.dart';
import 'package:bookforest/common/presentation/widgets/empty_space.dart';
import 'package:bookforest/common/utils/size_util.dart';
import 'package:bookforest/features/search/presentation/widgets/user_list_card.dart';
import 'package:flutter/material.dart';

class UserPreview extends StatelessWidget {
  final String title;
  final VoidCallback? onMoreTap;
  final VoidCallback? onListCardTap;

  const UserPreview({
    super.key,
    required this.title,
    this.onMoreTap,
    this.onListCardTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: expectSize(18),
            bottom: expectSize(19),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppThemeData.semiBold_16,
              ),
              InkWell(
                onTap: onMoreTap,
                child: Text(
                  '더보기',
                  style: AppThemeData.medium_16,
                ),
              ),
            ],
          ),
        ),
        const Column(
          children: [
            UserListCard(),
            EmptySpace(height: 10),
            UserListCard(),
            EmptySpace(height: 10),
            UserListCard(),
          ],
        ),
      ],
    );
  }
}
