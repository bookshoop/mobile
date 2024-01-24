import 'package:bookforest/core/domain/entities/pagination.dart';
import 'package:bookforest/features/book_forest/data/dtos/enum/book_forest_options.dart';
import 'package:bookforest/features/book_forest/domain/entities/book_forest.dart';
import 'package:bookforest/features/book_forest/presentation/providers/popular_book_forest_provider.dart';
import 'package:bookforest/features/book_forest/presentation/views/book_forest_search_screen.dart';
import 'package:bookforest/features/book_forest/presentation/widgets/book_forest_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class PopularBookForest extends ConsumerWidget {
  const PopularBookForest({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Pagination<BookForest> bookForest =
        ref.watch(popularBookForestProvider);
    return BookForestPreview(
      title: '유저들의 책숲을 구경하세요!',
      bookForest: bookForest,
      onMoreTap: () {
        context.pushNamed(
          BookForestListScreen.routeName,
          queryParameters: {
            'option': BookForestOptions.popular.name,
          },
        );
      },
    );
  }
}
