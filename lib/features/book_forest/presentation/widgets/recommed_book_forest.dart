import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/book_forest/presentation/widgets/recommend_book_forest_list_card.dart';
import 'package:flutter/material.dart';

class RecommendBookforest extends StatelessWidget {
  const RecommendBookforest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 18.size,
            bottom: 19.size,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '책숲지기들의 추천 책숲',
                style: AppThemeData.semiBold_16,
              ),
              InkWell(
                onTap: () {},
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
            RecommendBookForestListCard(),
            EmptySpace(height: 10),
            RecommendBookForestListCard(),
          ],
        ),
      ],
    );
  }
}
