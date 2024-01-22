import 'package:bookforest/common/configs/theme/theme.dart';
import 'package:bookforest/common/presentation/widgets/empty_space.dart';
import 'package:bookforest/common/utils/size_util.dart';
import 'package:bookforest/features/book_forest/presentation/views/book_forest_search_screen.dart';
import 'package:bookforest/features/book_forest/presentation/widgets/book_forest_preview.dart';
import 'package:bookforest/features/book_forest/presentation/widgets/book_forest_map.dart';
import 'package:bookforest/features/book_forest/presentation/widgets/recommed_book_forest.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookTravelScreen extends StatelessWidget {
  const BookTravelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: expectSize(24),
        right: expectSize(24),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            BookForestPreview(
              title: '너의 책숲은',
              onMoreTap: () =>
                  context.pushNamed(BookForestListScreen.routeName),
            ),
            const RecommendBookforest(),
            Column(
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
                        '내 근처 책숲 찾아보기',
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
                const BookForestMap(),
              ],
            ),
            const EmptySpace(height: 64),
          ],
        ),
      ),
    );
  }
}
