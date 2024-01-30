// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimpleBookImpl _$$SimpleBookImplFromJson(Map<String, dynamic> json) =>
    _$SimpleBookImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      writer: json['writer'] as String,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$SimpleBookImplToJson(_$SimpleBookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'writer': instance.writer,
      'thumbnail': instance.thumbnail,
    };
