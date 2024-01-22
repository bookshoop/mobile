import 'package:bookforest/common/domain/entities/enums/division.dart';
import 'package:bookforest/common/domain/entities/pagination.dart';
import 'package:bookforest/features/book/data/dtos/book_parameters.dart';
import 'package:bookforest/features/book/data/repositories/book_repository.dart';
import 'package:bookforest/features/book/domain/entities/book.dart';
import 'package:flutter/material.dart';

class MockBookRepository implements BookRepository {
  @override
  Future<Pagination<Book>> getBooks({
    BookParameters parameters = const BookParameters(),
  }) async {
    await Future.delayed(Durations.extralong4);
    List<Book> list;
    bool hasMore;
    switch (parameters.division) {
      case Division.bestSeller:
      case Division.recommended:
        list = List.generate(9, (index) {
          return Book(
            id: index.toString(),
            title: '재밌는책$index',
            writer: '나는작가$index',
            category: '장르$index',
          );
        });
        hasMore = false;
        break;
      default:
        list = List.generate(15, (index) {
          return Book(
            id: index.toString(),
            title: '재밌는책$index',
            writer: '나는작가$index',
            category: '장르$index',
          );
        });
        hasMore = true;
    }
    return Pagination.data(content: list, hasMore: hasMore);
  }
}
