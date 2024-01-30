// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LibraryParameters _$LibraryParametersFromJson(Map<String, dynamic> json) =>
    LibraryParameters(
      itemSize: json['itemSize'] as int? ?? 15,
      searchValue: json['searchValue'] as String? ?? '',
      cursor: json['cursor'] as String?,
      category:
          (json['category'] as List<dynamic>?)?.map((e) => e as int).toList(),
      library:
          (json['library'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$LibraryParametersToJson(LibraryParameters instance) =>
    <String, dynamic>{
      'itemSize': instance.itemSize,
      'searchValue': instance.searchValue,
      'cursor': instance.cursor,
      'library': instance.library,
      'category': instance.category,
    };
