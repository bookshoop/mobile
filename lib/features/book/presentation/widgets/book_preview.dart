import 'dart:math';

import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/domain/entities/pagination.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/book/domain/entities/book.dart';
import 'package:bookforest/features/book/presentation/widgets/book_list_card.dart';
import 'package:bookforest/features/book/presentation/widgets/book_preview_shimmer.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class BookPreview extends StatelessWidget {
  final String title;
  final Pagination<Book>? bookList;
  final VoidCallback? onMoreTap;
  final VoidCallback? onListCardTap;

  const BookPreview({
    super.key,
    required this.title,
    this.bookList,
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
          switch (bookList) {
            PaginationLoading() => const BookPreviewShimmer(),
            PaginationError() => const BookPreviewShimmer(),
            null => const BookPreviewShimmer(),
            PaginationData<Book>() => _Content(
                onListCardTap: onListCardTap,
                bookList: bookList! as PaginationData<Book>,
              ),
          }
        ],
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({
    required this.onListCardTap,
    required this.bookList,
  });

  final VoidCallback? onListCardTap;
  final PaginationData<Book> bookList;

  @override
  Widget build(BuildContext context) {
    final itemCount = min((bookList.content.length / 3).ceil(), 3);
    return SizedBox(
      height: 250.size,
      child: Swiper(
        itemCount: itemCount,
        loop: false,
        itemBuilder: (context, index) {
          return createSwiperContent(index);
        },
        pagination: const SwiperPagination(
          builder: DotSwiperPaginationBuilder(
            color: Color.fromRGBO(183, 183, 183, 1),
          ),
        ),
      ),
    );
  }

  Widget createSwiperContent(int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        if (index * 3 < bookList.content.length)
          BookListCard(
            onTap: onListCardTap,
            book: bookList.content[index * 3],
          ),
        if (index * 3 + 1 < bookList.content.length)
          BookListCard(
            onTap: onListCardTap,
            book: bookList.content[index * 3 + 1],
          ),
        if (index * 3 + 2 < bookList.content.length)
          BookListCard(
            onTap: onListCardTap,
            book: bookList.content[index * 3 + 2],
          ),
      ],
    );
  }
}
