import 'package:bookforest/core/domain/entities/pagination.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/library/domain/entities/library_book.dart';
import 'package:bookforest/features/library/presentation/providers/library_controller.dart';
import 'package:bookforest/features/library/presentation/widgets/book_list_card_in_library.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LibraryBookList extends ConsumerWidget {
  const LibraryBookList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      libraryControllerProvider.select((value) => value.libraryBooks),
    );
    return switch (state) {
      // TODO 당겨서 리프레시 기능 구현
      PaginationData<LibraryBook>(
        hasMore: bool hasMore,
        content: List<LibraryBook> content,
      ) =>
        // TODO 스크롤 페이지네이션 구현
        SliverGrid.count(
          crossAxisCount: 3,
          crossAxisSpacing: 15.size,
          childAspectRatio: 0.35,
          children: content
              .map(
                (libraryBook) => BookListCardInLibrary(
                  libraryBook: libraryBook,
                ),
              )
              .toList(),
        ),
      PaginationLoading<LibraryBook>() => SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
              top: 50.size,
            ),
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      PaginationError<LibraryBook>(message: String message) =>
        SliverToBoxAdapter(
          child: Text(message),
        ),
    };
  }
}
