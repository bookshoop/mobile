// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_tree_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookTreeParameters _$BookTreeParametersFromJson(Map<String, dynamic> json) =>
    BookTreeParameters(
      itemSize: json['itemSize'] as int? ?? 15,
      searchValue: json['searchValue'] as String? ?? '',
      cursor: json['cursor'] as String?,
      options: $enumDecodeNullable(_$BookTreeOptionsEnumMap, json['options']) ??
          BookTreeOptions.all,
      division: $enumDecodeNullable(_$DivisionEnumMap, json['division']) ??
          Division.all,
    );

Map<String, dynamic> _$BookTreeParametersToJson(BookTreeParameters instance) =>
    <String, dynamic>{
      'itemSize': instance.itemSize,
      'searchValue': instance.searchValue,
      'cursor': instance.cursor,
      'options': instance.options,
      'division': instance.division,
    };

const _$BookTreeOptionsEnumMap = {
  BookTreeOptions.all: '전체',
  BookTreeOptions.myBookTree: '나의 책나무',
  BookTreeOptions.followingBookTree: '팔로잉 책나무',
};

const _$DivisionEnumMap = {
  Division.all: '전체',
  Division.bestSeller: '베스트셀러',
  Division.recommended: '추천도서',
  Division.popularBookForest: '인기책숲',
  Division.popularBookTree: '인기책나무',
};
