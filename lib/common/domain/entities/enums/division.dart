import 'package:freezed_annotation/freezed_annotation.dart';

enum Division {
  @JsonValue('전체')
  all('전체'),

  @JsonValue('베스트셀러')
  bestSeller('베스트셀러'),

  @JsonValue('추천도서')
  recommended('추천도서'),

  @JsonValue('인기책숲')
  popularBookForest('인기책숲'),

  @JsonValue('인기책나무')
  popularBookTree('인기책나무');

  final String name;
  const Division(this.name);
  String toJson() => name;
}
