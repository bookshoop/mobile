// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_login_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocialLoginDataImpl _$$SocialLoginDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialLoginDataImpl(
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
      socialProvider: $enumDecode(_$LoginTypeEnumMap, json['socialProvider']),
      socialId: json['socialId'] as String,
    );

Map<String, dynamic> _$$SocialLoginDataImplToJson(
        _$SocialLoginDataImpl instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'nickname': instance.nickname,
      'phoneNumber': instance.phoneNumber,
      'pushToken': instance.pushToken,
      'birthday': instance.birthday?.toIso8601String(),
      'likeGenre': instance.likeGenre,
      'accessRouteId': instance.accessRouteId,
      'accessRoute': instance.accessRoute,
      'socialProvider': _$LoginTypeEnumMap[instance.socialProvider]!,
      'socialId': instance.socialId,
    };

const _$LoginTypeEnumMap = {
  LoginType.kakao: 'kakao',
  LoginType.naver: 'naver',
  LoginType.apple: 'apple',
  LoginType.bookforest: 'bookforest',
};
