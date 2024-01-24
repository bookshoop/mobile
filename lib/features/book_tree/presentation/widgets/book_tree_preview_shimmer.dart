import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/features/book_tree/presentation/widgets/book_tree_list_card.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BookTreePreviewShimmer extends StatelessWidget {
  const BookTreePreviewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: const Column(
        children: [
          BookTreeListCardShimmer(),
          EmptySpace(height: 12),
          BookTreeListCardShimmer(),
          EmptySpace(height: 12),
          BookTreeListCardShimmer(),
        ],
      ),
    );
  }
}
