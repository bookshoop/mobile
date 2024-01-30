// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LibraryBookImpl _$$LibraryBookImplFromJson(Map<String, dynamic> json) =>
    _$LibraryBookImpl(
      id: json['id'] as int,
      library: Library.fromJson(json['library'] as Map<String, dynamic>),
      book: SimpleBook.fromJson(json['book'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LibraryBookImplToJson(_$LibraryBookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'library': instance.library,
      'book': instance.book,
    };
