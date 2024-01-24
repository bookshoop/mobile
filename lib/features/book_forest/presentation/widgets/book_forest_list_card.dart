import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/book_forest/domain/entities/book_forest.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BookForestListCard extends StatelessWidget {
  final BookForest bookForest;
  const BookForestListCard({
    super.key,
    required this.bookForest,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          bookForest.thumbnail,
          width: 150.size,
          height: 150.size,
          fit: BoxFit.cover,
        ),
        const EmptySpace(height: 9),
        Text(
          bookForest.title,
          style: AppThemeData.medium_14,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

class BookForestListCardShimmer extends StatelessWidget {
  const BookForestListCardShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150.size,
            height: 150.size,
            color: Colors.white,
          ),
          const EmptySpace(height: 9),
          Container(
            width: 120.size,
            height: 12.size,
            color: Colors.white,
          ),
          const EmptySpace(height: 9),
          Container(
            width: 100.size,
            height: 12.size,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
