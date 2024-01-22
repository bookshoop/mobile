import 'package:bookforest/features/book_forest/data/dtos/enum/book_forest_options.dart';
import 'package:bookforest/features/book_forest/presentation/views/book_forest_search_screen.dart';
import 'package:bookforest/features/book_tree/presentation/providers/popular_book_tree_provider.dart';
import 'package:bookforest/features/book_tree/presentation/widgets/book_tree_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class PopularBookTree extends ConsumerWidget {
  const PopularBookTree({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookTree = ref.watch(popularBookTreeProvider);
    return BookTreePreview(
      title: '유저들이 심은 인기 책나무!',
      bookTree: bookTree,
    );
  }
}
