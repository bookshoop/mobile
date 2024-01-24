import 'package:bookforest/core/domain/entities/pagination.dart';
import 'package:bookforest/features/book/domain/entities/book.dart';
import 'package:bookforest/features/book/presentation/providers/best_seller_provider.dart';
import 'package:bookforest/features/book/presentation/views/best_seller_screen.dart';
import 'package:bookforest/features/book/presentation/widgets/book_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class BestSellerList extends ConsumerWidget {
  const BestSellerList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Pagination<Book> bookList = ref.watch(bestSellerProvider);
    return BookPreview(
      title: '책숲 유저들이 많이 읽는 책이에요!',
      bookList: bookList,
      onMoreTap: () => context.pushNamed(BestSellerScreen.routeName),
    );
  }
}
