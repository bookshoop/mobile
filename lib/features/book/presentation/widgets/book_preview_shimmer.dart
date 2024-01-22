import 'package:bookforest/common/utils/size_util.dart';
import 'package:bookforest/features/book/presentation/widgets/book_list_card.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BookPreviewShimmer extends StatelessWidget {
  const BookPreviewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SizedBox(
        height: expectSize(250),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BookListCardShimmer(),
            BookListCardShimmer(),
            BookListCardShimmer(),
          ],
        ),
      ),
    );
  }
}
