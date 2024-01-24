// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationDataImpl<T> _$$PaginationDataImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PaginationDataImpl<T>(
      content: (json['content'] as List<dynamic>).map(fromJsonT).toList(),
      hasMore: json['hasMore'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PaginationDataImplToJson<T>(
  _$PaginationDataImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'content': instance.content.map(toJsonT).toList(),
      'hasMore': instance.hasMore,
      'runtimeType': instance.$type,
    };

_$PaginationLoadingImpl<T> _$$PaginationLoadingImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PaginationLoadingImpl<T>(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PaginationLoadingImplToJson<T>(
  _$PaginationLoadingImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$PaginationErrorImpl<T> _$$PaginationErrorImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PaginationErrorImpl<T>(
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PaginationErrorImplToJson<T>(
  _$PaginationErrorImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
