// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PagiantionParametersImpl _$$PagiantionParametersImplFromJson(
        Map<String, dynamic> json) =>
    _$PagiantionParametersImpl(
      itemSize: json['itemSize'] as int? ?? 15,
      searchValue: json['searchValue'] as String? ?? '',
      cursor: json['cursor'] as String?,
    );

Map<String, dynamic> _$$PagiantionParametersImplToJson(
        _$PagiantionParametersImpl instance) =>
    <String, dynamic>{
      'itemSize': instance.itemSize,
      'searchValue': instance.searchValue,
      'cursor': instance.cursor,
    };
