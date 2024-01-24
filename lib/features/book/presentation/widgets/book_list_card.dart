import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/book/domain/entities/book.dart';
import 'package:bookforest/features/book/presentation/views/book_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListCard extends StatelessWidget {
  final VoidCallback? onTap;
  final Book book;

  const BookListCard({
    super.key,
    this.onTap,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(
          BookDetailScreen.routeName,
          pathParameters: {'id': book.id},
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            book.thumbnail ?? 'https://image.yes24.com/goods/106400867/XL',
            width: 95.size,
            height: 150.size,
            fit: BoxFit.cover,
          ),
          const EmptySpace(height: 6),
          Text(
            book.title,
            style: AppThemeData.medium_14,
          ),
          Text(
            '${book.writer} 지음',
            style: AppThemeData.regular_12.copyWith(
              color: AppThemeData.darkGrey,
            ),
          ),
          Text(
            book.category,
            style: AppThemeData.regular_12.copyWith(
              color: AppThemeData.darkGrey,
            ),
          ),
        ],
      ),
    );
  }
}

class BookListCardShimmer extends StatelessWidget {
  const BookListCardShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 95.size,
          height: 150.size,
          color: Colors.white,
        ),
        const EmptySpace(height: 6),
        Container(
          width: 70.size,
          height: 12.size,
          color: Colors.white,
        ),
        const EmptySpace(height: 6),
        Container(
          width: 60.size,
          height: 10.size,
          color: Colors.white,
        ),
        const EmptySpace(height: 6),
        Container(
          width: 60.size,
          height: 10.size,
          color: Colors.white,
        ),
      ],
    );
  }
}
