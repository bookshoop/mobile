// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_forest_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookForestParameters _$BookForestParametersFromJson(
        Map<String, dynamic> json) =>
    BookForestParameters(
      itemSize: json['itemSize'] as int? ?? 15,
      searchValue: json['searchValue'] as String? ?? '',
      cursor: json['cursor'] as String?,
      options:
          $enumDecodeNullable(_$BookForestOptions22EnumMap, json['options']) ??
              BookForestOptions22.recent,
      division: $enumDecodeNullable(_$DivisionEnumMap, json['division']) ??
          Division.all,
    );

Map<String, dynamic> _$BookForestParametersToJson(
        BookForestParameters instance) =>
    <String, dynamic>{
      'itemSize': instance.itemSize,
      'searchValue': instance.searchValue,
      'cursor': instance.cursor,
      'options': instance.options,
      'division': instance.division,
    };

const _$BookForestOptions22EnumMap = {
  BookForestOptions22.recent: '최신순',
  BookForestOptions22.mostLikes: '인기순',
  BookForestOptions22.mine: '내책숲',
  BookForestOptions22.myFaovrite: '좋아요표시한책숲',
};

const _$DivisionEnumMap = {
  Division.all: '전체',
  Division.bestSeller: '베스트셀러',
  Division.recommended: '추천도서',
  Division.popularBookForest: '인기책숲',
  Division.popularBookTree: '인기책나무',
};
