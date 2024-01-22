import 'package:freezed_annotation/freezed_annotation.dart';

enum BookTreeOptions {
  @JsonValue('전체')
  all('전체'),

  @JsonValue('나의 책나무')
  myBookTree('나의 책나무'),

  @JsonValue('팔로잉 책나무')
  followingBookTree('팔로잉 책나무');

  final String option;
  const BookTreeOptions(this.option);
  String toJson() => option;
}
