import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/domain/entities/pagination.dart';
import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/book_forest/domain/entities/book_forest.dart';
import 'package:bookforest/features/book_forest/presentation/widgets/book_forest_list_card.dart';
import 'package:flutter/material.dart';

class BookForestPreview extends StatelessWidget {
  final String title;
  final Pagination<BookForest>? bookForest;
  final VoidCallback? onMoreTap;
  final VoidCallback? onListCardTap;

  const BookForestPreview({
    super.key,
    required this.title,
    this.bookForest,
    this.onMoreTap,
    this.onListCardTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 5.size,
        bottom: 15.size,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 19.size,
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
          switch (bookForest) {
            PaginationLoading() => const BookForestPreviewShimmer(),
            PaginationError() => const BookForestPreviewShimmer(),
            PaginationData() => _Content(
                bookForest: bookForest as PaginationData<BookForest>,
              ),
            null => const BookForestPreviewShimmer(),
          }
        ],
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final PaginationData<BookForest> bookForest;
  const _Content({
    required this.bookForest,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: BookForestListCard(
                bookForest: bookForest.content[0],
              ),
            ),
            const EmptySpace(width: 10),
            Flexible(
              child: BookForestListCard(
                bookForest: bookForest.content[1],
              ),
            ),
          ],
        ),
        const EmptySpace(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: BookForestListCard(
                bookForest: bookForest.content[2],
              ),
            ),
            const EmptySpace(width: 10),
            Flexible(
              child: BookForestListCard(
                bookForest: bookForest.content[3],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BookForestPreviewShimmer extends StatelessWidget {
  const BookForestPreviewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: BookForestListCardShimmer(),
            ),
            EmptySpace(width: 10),
            Flexible(
              child: BookForestListCardShimmer(),
            ),
          ],
        ),
        EmptySpace(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: BookForestListCardShimmer(),
            ),
            EmptySpace(width: 10),
            Flexible(
              child: BookForestListCardShimmer(),
            ),
          ],
        ),
      ],
    );
  }
}
