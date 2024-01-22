import 'package:freezed_annotation/freezed_annotation.dart';

enum BookListOptions {
  @JsonValue('전체')
  all('전체'),
  @JsonValue('베스트셀러')
  bestSeller('베스트셀러'),
  @JsonValue('추천도서')
  recommended('추천도서');

  final String option;
  const BookListOptions(this.option);
  String toJson() => option;
}
