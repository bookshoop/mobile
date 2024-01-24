import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:flutter/material.dart';

class BookListCardInBookShelf extends StatelessWidget {
  const BookListCardInBookShelf({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          'https://image.yes24.com/goods/106400867/XL',
          width: 95.size,
          height: 150.size,
          fit: BoxFit.cover,
        ),
        const EmptySpace(height: 6),
        Text(
          '럭키드로우 럭키드로우',
          style: AppThemeData.medium_14,
          maxLines: 2,
        ),
        Text(
          '드로우 앤드류 앤드류 지음',
          style: AppThemeData.regular_12.copyWith(
            color: AppThemeData.darkGrey,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          '안방서재, 큰책장, 1번책칸',
          style: AppThemeData.regular_12.copyWith(
            color: AppThemeData.darkGrey,
          ),
          maxLines: 2,
        ),
      ],
    );
  }
}
