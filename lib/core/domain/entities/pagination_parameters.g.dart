// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagiantionParameters _$PagiantionParametersFromJson(
        Map<String, dynamic> json) =>
    PagiantionParameters(
      itemSize: json['itemSize'] as int? ?? 15,
      searchValue: json['searchValue'] as String? ?? '',
      cursor: json['cursor'] as String?,
    );

Map<String, dynamic> _$PagiantionParametersToJson(
        PagiantionParameters instance) =>
    <String, dynamic>{
      'itemSize': instance.itemSize,
      'searchValue': instance.searchValue,
      'cursor': instance.cursor,
    };
