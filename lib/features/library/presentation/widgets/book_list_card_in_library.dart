import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:bookforest/core/presentation/widgets/empty_space.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/features/book/presentation/views/book_detail_screen.dart';
import 'package:bookforest/features/library/domain/entities/library_book.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListCardInLibrary extends StatelessWidget {
  const BookListCardInLibrary({
    super.key,
    required this.libraryBook,
  });

  final LibraryBook libraryBook;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(
          BookDetailScreen.routeName,
          pathParameters: {'id': '${libraryBook.book.id}'},
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (libraryBook.book.thumbnail != null)
            Image.network(
              libraryBook.book.thumbnail!,
              width: 95.size,
              height: 150.size,
              fit: BoxFit.cover,
            ),
          if (libraryBook.book.thumbnail == null)
            Container(
              width: 95.size,
              height: 150.size,
              color: AppThemeData.darkGrey,
            ),
          const EmptySpace(height: 6),
          Text(
            libraryBook.book.title,
            style: AppThemeData.medium_14,
            maxLines: 2,
          ),
          Text(
            libraryBook.book.writer,
            style: AppThemeData.regular_12.copyWith(
              color: AppThemeData.darkGrey,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            libraryBook.library.name,
            style: AppThemeData.regular_12.copyWith(
              color: AppThemeData.darkGrey,
            ),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
