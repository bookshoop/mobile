// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookParameters _$BookParametersFromJson(Map<String, dynamic> json) =>
    BookParameters(
      itemSize: json['itemSize'] as int? ?? 15,
      searchValue: json['searchValue'] as String? ?? '',
      cursor: json['cursor'] as String?,
      division: $enumDecodeNullable(_$DivisionEnumMap, json['division']) ??
          Division.all,
    );

Map<String, dynamic> _$BookParametersToJson(BookParameters instance) =>
    <String, dynamic>{
      'itemSize': instance.itemSize,
      'searchValue': instance.searchValue,
      'cursor': instance.cursor,
      'division': instance.division,
    };

const _$DivisionEnumMap = {
  Division.all: '전체',
  Division.bestSeller: '베스트셀러',
  Division.recommended: '추천도서',
  Division.popularBookForest: '인기책숲',
  Division.popularBookTree: '인기책나무',
};
