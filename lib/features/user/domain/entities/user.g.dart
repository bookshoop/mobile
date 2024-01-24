// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginImpl _$$LoginImplFromJson(Map<String, dynamic> json) => _$LoginImpl(
      id: json['id'] as int,
      nickName: json['nickName'] as String,
      mobile: json['mobile'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      profile: json['profile'] == null
          ? null
          : BookForestFile.fromJson(json['profile'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoginImplToJson(_$LoginImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickName': instance.nickName,
      'mobile': instance.mobile,
      'birthday': instance.birthday?.toIso8601String(),
      'profile': instance.profile,
      'runtimeType': instance.$type,
    };

_$LogoutImpl _$$LogoutImplFromJson(Map<String, dynamic> json) => _$LogoutImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LogoutImplToJson(_$LogoutImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$LogginInImpl _$$LogginInImplFromJson(Map<String, dynamic> json) =>
    _$LogginInImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LogginInImplToJson(_$LogginInImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$SimpleWriterImpl _$$SimpleWriterImplFromJson(Map<String, dynamic> json) =>
    _$SimpleWriterImpl(
      id: json['id'] as int,
      username: json['username'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SimpleWriterImplToJson(_$SimpleWriterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'runtimeType': instance.$type,
    };

_$UserListImpl _$$UserListImplFromJson(Map<String, dynamic> json) =>
    _$UserListImpl(
      id: json['id'] as int,
      username: json['username'] as String,
      followerCount: json['followerCount'] as int,
      followingCount: json['followingCount'] as int,
      profile: json['profile'] == null
          ? null
          : BookForestFile.fromJson(json['profile'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserListImplToJson(_$UserListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'followerCount': instance.followerCount,
      'followingCount': instance.followingCount,
      'profile': instance.profile,
      'runtimeType': instance.$type,
    };
