// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInDataImpl _$$SignInDataImplFromJson(Map<String, dynamic> json) =>
    _$SignInDataImpl(
      profile: json['profile'] as String?,
      nickname: json['nickname'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      pushToken: json['pushToken'] as String,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      likeGenre:
          (json['likeGenre'] as List<dynamic>?)?.map((e) => e as int).toList(),
      accessRouteId: json['accessRouteId'] as int?,
      accessRoute: json['accessRoute'] as int?,
    );

Map<String, dynamic> _$$SignInDataImplToJson(_$SignInDataImpl instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'nickname': instance.nickname,
      'phoneNumber': instance.phoneNumber,
      'pushToken': instance.pushToken,
      'birthday': instance.birthday?.toIso8601String(),
      'likeGenre': instance.likeGenre,
      'accessRouteId': instance.accessRouteId,
      'accessRoute': instance.accessRoute,
    };
