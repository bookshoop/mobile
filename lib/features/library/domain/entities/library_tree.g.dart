// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_tree.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LibraryTreeImpl _$$LibraryTreeImplFromJson(Map<String, dynamic> json) =>
    _$LibraryTreeImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      children: (json['children'] as List<dynamic>)
          .map((e) => LibraryTree.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LibraryTreeImplToJson(_$LibraryTreeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'children': instance.children,
    };
