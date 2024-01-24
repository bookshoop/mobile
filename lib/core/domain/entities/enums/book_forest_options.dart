import 'package:freezed_annotation/freezed_annotation.dart';

enum BookForestOptions22 {
  @JsonValue('최신순')
  recent('최신순'),

  @JsonValue('인기순')
  mostLikes('인기순'),

  @JsonValue('내책숲')
  mine('내책숲'),

  @JsonValue('좋아요표시한책숲')
  myFaovrite('좋아요표시한책숲');

  final String option;
  const BookForestOptions22(this.option);
  String toJson() => option;
}
