// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_tree.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookTreeImpl _$$BookTreeImplFromJson(Map<String, dynamic> json) =>
    _$BookTreeImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      likes: json['likes'] as int,
      isLike: json['isLike'] as bool,
      book: Book.fromJson(json['book'] as Map<String, dynamic>),
      createDateTime: DateTime.parse(json['createDateTime'] as String),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookTreeImplToJson(_$BookTreeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'likes': instance.likes,
      'isLike': instance.isLike,
      'book': instance.book,
      'createDateTime': instance.createDateTime.toIso8601String(),
      'user': instance.user,
    };
