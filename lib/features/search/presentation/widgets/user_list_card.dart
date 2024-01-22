import 'package:bookforest/common/configs/theme/theme.dart';
import 'package:bookforest/common/presentation/widgets/empty_space.dart';
import 'package:bookforest/common/utils/size_util.dart';
import 'package:flutter/material.dart';

class UserListCard extends StatelessWidget {
  const UserListCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: expectSize(32),
          backgroundImage: const NetworkImage(
            'https://i.namu.wiki/i/sJP57jG46ZMxtguzyqmOl-xyOqW6yteOiTfiKzlLkJFrO0HmDQh_DVdnTJp_zo7MWkjVbpFHDwnJJIcWrq-ViQ.webp',
          ),
        ),
        const EmptySpace(width: 8),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const EmptySpace(height: 9),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'CatIsCuteCatIs',
                  style: AppThemeData.bold_20,
                ),
              ),
              const EmptySpace(height: 10),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  '팔로워 123 팔로잉 243',
                  style: AppThemeData.medium_15.copyWith(
                    color: AppThemeData.darkGrey,
                  ),
                ),
              ),
              const EmptySpace(height: 10),
            ],
          ),
        ),
        const EmptySpace(width: 5),
        Container(
          width: expectSize(65),
          height: expectSize(28),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(expectSize(5)),
            color: AppThemeData.subGreen,
          ),
          alignment: Alignment.center,
          child: Text(
            '+팔로우',
            style: AppThemeData.semiBold_14.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
