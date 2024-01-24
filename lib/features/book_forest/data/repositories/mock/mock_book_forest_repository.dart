import 'package:bookforest/core/domain/entities/enums/division.dart';
import 'package:bookforest/core/domain/entities/pagination.dart';
import 'package:bookforest/features/book_forest/data/dtos/book_forest_parameters.dart';
import 'package:bookforest/features/book_forest/data/repositories/book_forest_repository.dart';
import 'package:bookforest/features/book_forest/domain/entities/book_forest.dart';
import 'package:flutter/material.dart';

class MockBookForestRepository implements BookForestRepository {
  @override
  Future<Pagination<BookForest>> getBookForest({
    BookForestParameters parameters = const BookForestParameters(),
  }) async {
    await Future.delayed(Durations.extralong4);
    List<BookForest> list;
    bool hasMore;
    switch (parameters.division) {
      case Division.popularBookForest:
        list = List.generate(
          4,
          (index) => BookForest(
            id: index,
            thumbnail:
                'https://post-phinf.pstatic.net/MjAyMDAzMjNfMjk5/MDAxNTg0OTI2Nzg0MTQz.TprsEnMxXt5Wj7ATV024WuGhgwZI_j6UPem3ad2MqSkg.1LReAi1yY8Jk0tT_x0uPKe3Ukx8M7z4v_ZrHlZPw56Ig.JPEG/%EC%9E%90%EB%85%80%EA%B0%80%EA%B5%AC_%EC%82%AC%EC%83%89%EC%9D%84_%EC%9C%84%ED%95%9C_%EB%82%98%EB%A7%8C%EC%9D%98_%EC%B0%A8%EB%B6%84%ED%95%9C_%EC%84%9C%EC%9E%AC_%EA%BE%B8%EB%AF%B8%EA%B8%B0-view3_%283%29.jpg?type=w800_q75',
            title: '제목$index이지롱',
          ),
        );
        hasMore = false;
        break;
      default:
        list = List.generate(
          15,
          (index) => BookForest(
            id: index,
            thumbnail:
                'https://post-phinf.pstatic.net/MjAyMDAzMjNfMjk5/MDAxNTg0OTI2Nzg0MTQz.TprsEnMxXt5Wj7ATV024WuGhgwZI_j6UPem3ad2MqSkg.1LReAi1yY8Jk0tT_x0uPKe3Ukx8M7z4v_ZrHlZPw56Ig.JPEG/%EC%9E%90%EB%85%80%EA%B0%80%EA%B5%AC_%EC%82%AC%EC%83%89%EC%9D%84_%EC%9C%84%ED%95%9C_%EB%82%98%EB%A7%8C%EC%9D%98_%EC%B0%A8%EB%B6%84%ED%95%9C_%EC%84%9C%EC%9E%AC_%EA%BE%B8%EB%AF%B8%EA%B8%B0-view3_%283%29.jpg?type=w800_q75',
            title: '제목$index이지롱',
          ),
        );
        hasMore = true;
    }
    return Pagination.data(
      content: list,
      hasMore: hasMore,
    );
  }
}
