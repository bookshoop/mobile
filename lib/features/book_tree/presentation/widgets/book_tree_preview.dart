import 'package:bookforest/common/configs/theme/theme.dart';
import 'package:bookforest/common/domain/entities/pagination.dart';
import 'package:bookforest/common/presentation/widgets/empty_space.dart';
import 'package:bookforest/common/utils/size_util.dart';
import 'package:bookforest/features/book_tree/domain/entities/book_tree.dart';
import 'package:bookforest/features/book_tree/presentation/widgets/book_tree_list_card.dart';
import 'package:bookforest/features/book_tree/presentation/widgets/book_tree_preview_shimmer.dart';
import 'package:flutter/material.dart';

class BookTreePreview extends StatelessWidget {
  final String title;
  final Pagination<BookTree>? bookTree;
  final VoidCallback? onMoreTap;

  const BookTreePreview({
    super.key,
    required this.title,
    this.bookTree,
    this.onMoreTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        switch (bookTree) {
          PaginationLoading() => const BookTreePreviewShimmer(),
          PaginationError() => const BookTreePreviewShimmer(),
          null => const BookTreePreviewShimmer(),
          PaginationData() => _Content(
              bookTree: bookTree as PaginationData<BookTree>,
            ),
        }
      ],
    );
  }
}

class _Content extends StatelessWidget {
  final PaginationData<BookTree> bookTree;
  const _Content({
    required this.bookTree,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookTreeListCard(
          bookTree: bookTree.content[0],
        ),
        const EmptySpace(height: 20),
        BookTreeListCard(
          bookTree: bookTree.content[1],
        ),
        const EmptySpace(height: 20),
        BookTreeListCard(
          bookTree: bookTree.content[2],
        ),
      ],
    );
  }
}
