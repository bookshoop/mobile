import 'package:bookforest/core/domain/entities/enums/division.dart';
import 'package:bookforest/core/domain/entities/pagination.dart';
import 'package:bookforest/features/user/domain/entities/user.dart';
import 'package:bookforest/features/book/domain/entities/book.dart';
import 'package:bookforest/features/book_tree/data/dtos/book_tree_parameters.dart';
import 'package:bookforest/features/book_tree/data/repositories/book_tree_repository.dart';
import 'package:bookforest/features/book_tree/domain/entities/book_tree.dart';
import 'package:flutter/material.dart';

class MockBookTreeRepository implements BookTreeRepository {
  @override
  Future<Pagination<BookTree>> getBookTrees({
    BookTreeParameters parameters = const BookTreeParameters(),
  }) async {
    await Future.delayed(Durations.extralong4);
    List<BookTree> list;
    bool hasMore;
    switch (parameters.division) {
      case Division.popularBookTree:
        list = List.generate(3, (index) {
          return BookTree(
            id: index,
            title: '책제목$index는 재미있는 책이다~',
            content: '''
            책$index를 읽고 쓴 내용임. 책$index를 읽고 쓴 내용임. 
            책$index를 읽고 쓴 내용임. 책$index를 읽고 쓴 내용임. 
            책$index를 읽고 쓴 내용임. 책$index를 읽고 쓴 내용임. 
            책$index를 읽고 쓴 내용임. 책$index를 읽고 쓴 내용임. ''',
            likes: index * 2,
            isLike: index.isEven,
            book: Book(
              id: index.toString(),
              title: '책제목$index',
              writer: '나는 작가 $index',
              category: '재밌는 장르$index',
            ),
            createDateTime: DateTime.now(),
            user: User.simpleWriter(
              id: index,
              username: '글쓴이임$index',
            ),
          );
        });
        hasMore = false;
        break;
      default:
        list = List.generate(9, (index) {
          return BookTree(
            id: index,
            title: '책제목$index는 재미있는 책이다~',
            content: '''
            책$index를 읽고 쓴 내용임. 책$index를 읽고 쓴 내용임. 
            책$index를 읽고 쓴 내용임. 책$index를 읽고 쓴 내용임. 
            책$index를 읽고 쓴 내용임. 책$index를 읽고 쓴 내용임. 
            책$index를 읽고 쓴 내용임. 책$index를 읽고 쓴 내용임. ''',
            likes: index * 2,
            isLike: index.isEven,
            book: Book(
              id: index.toString(),
              title: '책제목$index',
              writer: '나는 작가 $index',
              category: '재밌는 장르$index',
            ),
            createDateTime: DateTime.now(),
            user: User.simpleWriter(
              id: index,
              username: '글쓴이임$index',
            ),
          );
        });
        hasMore = false;
    }
    return Pagination.data(content: list, hasMore: hasMore);
  }
}
